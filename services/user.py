from flask import session, request, Blueprint, redirect, render_template, flash
from models.user import *
from util import *

user_blueprint = Blueprint('user', __name__)

@user_blueprint.route('/register', methods=['GET', 'POST'])
def register():
    """
    user register
    :return:
    """
    if request.method == 'GET':
        return render_template("register.html")

    try:
        is_staff = get_form_field(request, 'is_staff')
        user = User(
            username=get_form_field(request, 'username'),
            password=md5(get_form_field(request, 'password')),
            is_staff=is_staff == 'on' or is_staff is True
        )

        new_user = create_user(user)
        if new_user is not None:
            session["username"] = new_user.username
            session["is_staff"] = new_user.is_staff
            session["user_id"] = new_user.user_id

            return redirect("/trip/index")
        else:
            flash('User already exist', "danger")
    except ValueError as e:
        flash('Bad request', "danger")

    return redirect("/user/register")


@user_blueprint.route('/logout', methods=['POST', 'GET'])
def logout():
    """
    user logout
    :return:
    """
    session.clear()
    return redirect("/user/login")

@user_blueprint.route('/customer_login', methods=['GET'])
def customer_login():
    """
    user login
    :return:
    """
    if request.method == 'GET':
        return render_template("customer_login.html")

@user_blueprint.route('/staff_login', methods=['GET'])
def staff_login():
    """
    user login
    :return:
    """
    if request.method == 'GET':
        return render_template("staff_login.html")

@user_blueprint.route('/login', methods=['GET'])
def common_login():
    return redirect("/user/customer_login")

@user_blueprint.route('/login', methods=['POST'])
def login():
    username = get_form_field(request, 'username')
    password = md5(get_form_field(request, 'password'))
    is_staff = get_form_field(request, 'is_staff')
    is_staff = is_staff == '1' or is_staff is True

    user = get_user(username, is_staff)
    if user is not None and user.password == password:
        session["username"] = username
        session["is_staff"] = is_staff
        session["user_id"] = user.user_id

        return redirect("/trip/index")

    flash('Invalid credentials', "danger")
    if is_staff:
        return redirect("/user/staff_login")
    else:
        return redirect("/user/customer_login")

@user_blueprint.route('/users', methods=['GET'])
def users():
    user_id = session.get("user_id")
    if user_id is None:
        return redirect("/user/staff_login")

    username = session.get("username")
    user_role = get_user_type(session.get("is_staff"))
    all_users = get_all_users_booking_status()

    return render_template('users.html', username=username, user_role=user_role,
                           users=all_users)
