# Models
Data models which are used to represent the data in the application, and interact with the database.

user: user model  
trip: trip-related model (trip, booking, passenger)

# Services
Services which interact with models and provide functionality to the front end.

user: user service  
trip: trip service

# Utils
db: handles DB connections and executes queries  
util: common utility functions (e.g., retrieve fields from a form, MD5 for passwords)

# templates
HTML files



# How to run the application  
  
  Install dependencies pip install -r requirements.txt 
  Install mysql and create database, and load sql file in db folder, run ddl.sql first, then dml.sql  
  Finish configuration in db.yml  
  Run python app.py 
  Open browser and visit http://127.0.0.1:5000
 
 
