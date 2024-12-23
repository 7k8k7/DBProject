import db

tb_name = "msl_user"

class User:
    """
    class for user
    """
    def __init__(self, username: str, password: str, is_staff: bool, user_id: str = None):
        """
        constructor
        :param username:
        :param password:
        :param is_staff:
        """
        if username is None or password is None or is_staff is None:
            raise ValueError

        if user_id is None:
            user_id = get_next_uid()

        self.user_id = user_id
        self.username = username
        self.password = password
        self.is_staff = is_staff

    def __str__(self):
        return "id: {}, user: {}, account_type: {}".format(self.user_id, self.username, get_user_type(self.is_staff))

def create_user(user: User) -> User:
    """
    create a new account
    :param user:
    :return: True if create success
    """
    if get_user(user.username, user.is_staff) is not None:
        return None

    retry_limit = 10
    retry = 0
    while retry < retry_limit:
        try:
            insert_sql = """
                insert into {} (user_id, user_name, password, account_type) VALUES (%s, %s, %s, %s)
            """.format(tb_name)

            db.exec_commit(insert_sql, (user.user_id, user.username, user.password, get_user_type(user.is_staff)))
        except Exception as e:
            print("Error: ", e)
            user.user_id = get_next_uid()
            retry += 1
            continue

    return get_user(username=user.username, is_staff=user.is_staff)


def get_user_type(is_staff: bool) -> str:
    """
    get user type
    :param is_staff:
    :return:
    """
    return 'staff' if is_staff else 'Customer'

def get_user(username: str, is_staff: bool) -> User:
    """
    get user id by username
    :param is_staff:
    :param username:
    :return: user_id
    """
    account_type = get_user_type(is_staff)
    select_sql = "SELECT * FROM {} WHERE user_name = %s and account_type = %s".format(tb_name)
    res = db.exec_get_one(select_sql, (username,account_type,))
    return None if res is None else User(user_id=res[0], username=res[1], password=res[2], is_staff=res[3] == 'staff')


def get_next_uid():
    curr_max_uid = db.exec_get_one("SELECT MAX(user_id) FROM {}".format(tb_name))
    id_num = 1
    if curr_max_uid is not None:
        id_num = int(curr_max_uid[0][1:]) + 1
    return "U" + str(id_num)


def get_all_users_booking_status():
    """
    SET operator query
    :return:
    """
    query_sql = """
       SELECT *, 'Booked' AS booking_status
        FROM {}
        WHERE user_id IN (
            SELECT DISTINCT user_id
            FROM msl_passenger
        )
        UNION
        SELECT *, 'NotBooked' AS booking_status
        FROM {}
        WHERE user_id NOT IN (
            SELECT DISTINCT user_id
            FROM msl_passenger
        );
    """.format(tb_name, tb_name)

    res = {"Booked": [], "NotBooked": []}
    for r in db.exec_get_all(query_sql):
        if r[4] == 'Booked':
            res["Booked"].append(User(user_id=r[0], username=r[1], password=r[2], is_staff=r[3] =='staff'))
        else:
            res["NotBooked"].append(User(user_id=r[0], username=r[1], password=r[2], is_staff=r[3] =='staff'))

    return res

def update_pwd_md5():
    import util
    query = """
    select user_id, password from msl_user
    """
    for r in db.exec_get_all(query):
        uid = r[0]
        password = r[1]
        print(uid, password, util.md5(password))
        sql = "update msl_user set password=%s where user_id=%s"
        db.exec_commit(sql, (util.md5(password), uid))
