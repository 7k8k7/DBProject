from flask import Blueprint, render_template, session, redirect, request
from models.trip import *
from models.user import *

trip_blueprint = Blueprint('trip', __name__)

@trip_blueprint.route('/index', methods=['GET', 'POST'])
def index():
    user_id = session.get("user_id")
    if user_id is None:
        return redirect("/user/customer_login")

    user_role = get_user_type(session.get("is_staff"))
    username = session.get("username")
    if session.get("is_staff"):
        top_trips = get_top10_booking_trip()
        return render_template('index.html', user_role=user_role, username=username, top_trips=top_trips)
    else:
        user_bookings = get_user_bookings(user_id)
        return render_template('index.html', user_role=user_role, username=username, user_bookings=user_bookings)

@trip_blueprint.route('/passengers', methods=['GET', 'POST'])
def passengers():
    user_id = session.get("user_id")
    if user_id is None:
        return redirect("/user/staff_login")

    selected_date = request.args.get('date')
    username = session.get("username")
    user_role = get_user_type(session.get("is_staff"))
    if selected_date:
        all_passengers = get_all_passengers_booking_after_date(selected_date)
    else:
        all_passengers = get_all_passengers_booking_after_date('2000-01-01')

    return render_template('passengers.html', username=username, user_role=user_role,
                           passengers=all_passengers, selected_date=selected_date)


@trip_blueprint.route('/bookings', methods=['GET', 'POST'])
def bookings():
    user_id = session.get("user_id")
    if user_id is None:
        return redirect("/user/staff_login")

    selected_date = request.args.get('date')
    username = session.get("username")
    user_role = get_user_type(session.get("is_staff"))
    if selected_date:
        all_bookings = get_bookings_after_date(selected_date)
    else:
        all_bookings = get_bookings_after_date('2000-01-01')

    return render_template('booking.html', username=username, user_role=user_role,
                           bookings=all_bookings, selected_date=selected_date)


@trip_blueprint.route('/trips', methods=['GET', 'POST'])
def trips():
    user_id = session.get("user_id")
    if user_id is None:
        return redirect("/user/customer_login")

    selected_date = request.args.get('date')
    username = session.get("username")
    user_role = get_user_type(session.get("is_staff"))
    if selected_date:
        all_trips = get_trip_start_after_date(selected_date)
    else:
        all_trips = get_trip_start_after_date('2000-01-01')

    return render_template('trips.html', username=username, user_role=user_role,
                           trips=all_trips, selected_date=selected_date)

@trip_blueprint.route('/about', methods=['GET', 'POST'])
def about():
    return render_template('about.html')

@trip_blueprint.route('/contact', methods=['GET', 'POST'])
def contact():
    return render_template('contact.html')

@trip_blueprint.route('/delete', methods=['GET', 'POST'])
def delete():
    user_id = session.get("user_id")
    if user_id is None or not session.get("is_staff"):
        return redirect("/user/staff_login")

    trip_id = request.args.get('id')
    if trip_id:
        delete_trip(trip_id)
        return redirect("/trip/trips")
    else:
        return redirect("/trip/trips")