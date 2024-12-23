from flask import Flask, redirect
from services import init_app

app = Flask(__name__)
app.secret_key = '123456'
init_app(app)

@app.route('/')
def index():
    return redirect("/trip/index")

@app.after_request
def set_security_headers(response):
    response.headers['Content-Security-Policy'] = "default-src 'self'; script-src 'self'; style-src 'self' 'unsafe-inline' https://cdn.jsdelivr.net; font-src 'self' https://cdn.jsdelivr.net;"
    return response

if __name__ == '__main__':
    app.run()
