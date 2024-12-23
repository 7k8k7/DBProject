## Project Structure

### Models

data models which are used to represent the data in the application, and interact with db

- user: user model
- trip: trip related model, including trip, booking, passenger 

### Services
services which are used to interact with models, and provide service for front end
- user: user service
- trip: trip service

### Utils

- db: handle db connection and execute query
- util: common utility functions, get field from form and md5 for password

### templates

html files

## How to guard against SQL injection
use prepared statement to execute query, and don't concat params with query directly

exp:

`insert into {} (user_id, user_name, password, account_type) VALUES (%s, %s, %s, %s)`

`result = cur.execute(sql, args)`

## How to avoid cross site scripting attacks

- Sanitize User Input, using variable in jinja template like `{{ user_input }}`
- Content Security Policy (CSP) is a powerful defense mechanism that can restrict the sources of content (like scripts, styles, etc.) that the page can load. This way, even if there is a malicious script, it cannot be executed if it’s not from a trusted source.
    
  `@app.after_request
def set_security_headers(response):
    response.headers['Content-Security-Policy'] = "default-src 'self'; script-src 'self'; style-src 'self' 'unsafe-inline' https://cdn.jsdelivr.net; font-src 'self' https://cdn.jsdelivr.net;"
    return response`

## How to avoid deadlock in transaction

data amount is small, and when transaction failed due to primary key duplication, exception will be thrown, and will retry with new id
` except Exception as e:
            print("Error: ", e)
            user.user_id = get_next_uid()
            retry += 1`

## How to run the application

1. Install dependencies `pip install -r requirements.txt`
2. Install mysql and create database, and load sql file in db folder, run ddl.sql first, then dml.sql
3. Finish configuration in db.yml
3. Run `python app.py`
4. Open browser and visit `http://127.0.0.1:5000#
