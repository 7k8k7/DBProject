import db

tb_booking_name = "msl_booking"

class Passenger:
    """
    class for passenger
    """
    def __init__(self, f_name, l_name, user_id):
        self.f_name = f_name
        self.l_name = l_name
        self.user_id = user_id

    def __str__(self):
        return "user_id: {}, f_name: {}, l_name: {}".format(self.user_id, self.f_name, self.l_name)

class Trip:
    """
    class for trip
    """
    def __init__(self, trip_id: str, start_date: str, end_date: str, ship_name: str, ship_capacity: int):
        """
        constructor
        :param trip_id:
        :param start_date:
        :param end_date:
        :param ship_name:
        :param ship_capacity:
        """

        self.trip_id = trip_id
        self.ship_name = ship_name
        self.ship_capacity = ship_capacity
        self.start_date = start_date
        self.end_date = end_date

    def __str__(self):
        return "id: {}, ship: {}, capacity: {}, start: {}, end: {}".format(self.trip_id, self.ship_name, self.ship_capacity, self.start_date, self.end_date)


class Booking:
    """
    class for booking
    """
    def __init__(self, booking_id: str = None, trip: Trip = None, booking_date: str = None,
                 issue_date: str = None, due_date: str = None,
                 total_amount: float = None, passenger: Passenger = None):
        """
        constructor
        :param booking_id:
        :param trip:
        :param booking_date:
        :param issue_date:
        :param due_date:
        :param total_amount:
        :param passenger:
        """
        self.booking_id = booking_id
        self.trip = trip
        self.booking_date = booking_date
        self.issue_date = issue_date
        self.due_date = due_date
        self.total_amount = total_amount
        self.passenger = passenger

    def __str__(self):
        return "booking_id: {}, trip: {}, booking_date: {}, issue_date: {}, due_date: {}, total_amount: {}, passenger: {}".format(
            self.booking_id, self.trip, self.booking_date, self.issue_date, self.due_date, self.total_amount, self.passenger
        )

def get_user_bookings(user_id: str) -> list:
    """
    get user bookings
    Table joins with at least 3 tables in join
    :param user_id:
    :return:
    """
    query_sql = """
        SELECT b.bookingid, b.bookingdate, b.tripid, s.shipname, s.ship_capacity, 
        i.totalamount, i.issue_date, i.due_date, t.startdate, t.enddate,
        p.p_fname, p.p_lname
        FROM msl_booking b join msl_invoice i on b.invoiceid = i.invoiceid join msl_trip t on b.tripid = t.tripid join msl_ship s on t.shipid = s.shipid
        join msl_passenger p on b.bookingid=p.bookingid where p.user_id=%s
    """
    res = []

    for r in db.exec_get_all(query_sql, (user_id,)):
        booking_id = r[0]
        booking_date = r[1]
        trip_id = r[2]
        ship_name = r[3]
        ship_capacity = r[4]
        total_amount = r[5]
        issue_date = r[6]
        due_date = r[7]
        start_date = r[8]
        end_date = r[9]
        pf_name = r[10]
        pl_name = r[11]
        trip = Trip(trip_id, start_date, end_date, ship_name, ship_capacity)
        passenger = Passenger(pf_name, pl_name, user_id)
        res.append(Booking(booking_id, trip, booking_date, issue_date, due_date, total_amount, passenger))

    return res

def get_bookings_after_date(dt: str) -> list:
    """
    Multi-row subquery
    :param dt:
    :return:
    """
    query_sql = """
        SELECT p.user_id, p.p_fname, p.p_lname, b.bookingid, b.bookingdate, i.totalamount 
        FROM msl_passenger p join msl_booking b on b.bookingid=p.bookingid join msl_invoice i on b.invoiceid = i.invoiceid 
        WHERE b.tripid IN (
            SELECT tripid
            FROM msl_trip
            WHERE bookingdate >= %s
        );
    """

    res = []

    for r in db.exec_get_all(query_sql, (dt,)):
        user_id = r[0]
        f_name = r[1]
        l_name = r[2]
        booking_id = r[3]
        booking_date = r[4]
        total_amount = r[5]
        passenger = Passenger(f_name, l_name, user_id)
        res.append(Booking(booking_id=booking_id, booking_date=booking_date, total_amount=total_amount, passenger=passenger))

    return res


def get_all_passengers_booking_after_date(dt: str) -> list:
    """
    Correlated subquery
    :param dt:
    :return:
    """
    query_sql = """
        SELECT *
        FROM msl_passenger p
        WHERE EXISTS (
            SELECT 1
            FROM msl_booking b
            WHERE b.bookingid = p.bookingid AND b.bookingdate > %s
        );
    """

    res = []
    for r in db.exec_get_all(query_sql, (dt,)):
        user_id = r[0]
        f_name = r[1]
        l_name = r[2]
        res.append(Passenger(f_name, l_name, user_id))

    return res


def get_top10_booking_trip():
    """
    TOP-N/BOTTOM-N query
    :return:
    """
    query_sql = """
        SELECT t.tripid, t.startdate, t.enddate, s.shipname, s.ship_capacity, count(b.bookingid) as booking_count
        FROM msl_trip t join msl_ship s on t.shipid = s.shipid join msl_booking b on t.tripid = b.tripid
        group by t.tripid
        order by booking_count desc
        limit 10
    """

    res = []
    for r in db.exec_get_all(query_sql):
        trip_id = r[0]
        start_date = r[1]
        end_date = r[2]
        ship_name = r[3]
        ship_capacity = r[4]
        booking_count = r[5]

        res.append({"trip": Trip(trip_id, start_date, end_date, ship_name, ship_capacity), "booking_count": booking_count})

    return res


def get_trip_start_after_date(dt: str) -> list:
    """
    Query with in-line view or WITH clause
    :param dt:
    :return:
    """
    query_sql = """
        WITH future_bookings AS (
            SELECT t.tripid, t.startdate, t.enddate, s.shipname, s.ship_capacity
            FROM msl_trip t join msl_ship s on t.shipid = s.shipid join msl_booking b on t.tripid = b.tripid
            WHERE startdate > %s
        )
        SELECT * FROM future_bookings;
    """

    res = []
    for r in db.exec_get_all(query_sql, (dt,)):
        trip_id = r[0]
        start_date = r[1]
        end_date = r[2]
        ship_name = r[3]
        ship_capacity = r[4]

        res.append(Trip(trip_id, start_date, end_date, ship_name, ship_capacity))

    return res

def delete_trip(trip_id: str):
    """
    delete trip
    :param trip_id:
    :return:
    """
    print("delete trip", trip_id)
    db.exec_commit("delete from msl_trip where tripid=%s", (trip_id,))
