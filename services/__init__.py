from flask import Flask
from services.user import user_blueprint
from services.trip import trip_blueprint

def init_app(app: Flask):
    app.register_blueprint(user_blueprint, url_prefix='/user')
    app.register_blueprint(trip_blueprint, url_prefix='/trip')
    return app

