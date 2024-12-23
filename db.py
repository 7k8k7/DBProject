import os

import pymysql
import yaml

def connect():
    """
    connect to db
    :return:
    """
    yml_path = os.path.join(os.path.dirname(__file__), 'db.yml')

    with open(yml_path, 'r') as file:
        config = yaml.load(file, Loader=yaml.FullLoader)
        return pymysql.connect(user=config['user'],
                                password=config['password'],
                                host=config['host'],
                                port=config['port'],
                                database=config['database'])

def exec_commit(sql, args={}):
    """
    commit a query
    :param sql:
    :param args:
    :return:
    """
    conn = connect()
    cur = conn.cursor()
    conn.autocommit(False)
    result = cur.execute(sql, args)
    conn.commit()
    conn.close()
    return result

def exec_get_one(sql, args={}):
    """
    execute query and get one result
    :param sql:
    :param args:
    :return:
    """
    conn = connect()
    cur = conn.cursor()
    cur.execute(sql, args)
    one = cur.fetchone()
    conn.close()
    return one

def exec_get_all(sql, args={}):
    """
    execute query and get one result
    :param sql:
    :param args:
    :return:
    """
    conn = connect()
    cur = conn.cursor()
    cur.execute(sql, args)
    res = []
    rows = cur.fetchall()
    for row in rows:
        res.append(row)

    conn.close()
    return res

