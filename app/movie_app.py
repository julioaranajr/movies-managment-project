from flask import Flask
from flask import render_template
from flask import json
from flask import Request, Response
from flask_mysqldb import MySQL
from werkzeug import Generate_password_hash, check_password_hash
from werkzeug.wrappers import Request, Response

mysql = MySQL(app)
app = Flask(__name__)
app = Flask("MovieApp")

app.config["MYSQL_HOST"] = "127.0.0.1"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = "my-secret-pw"
app.config["MYSQL_DB"] = "data_movies"



url_for('static', filename='style.css')

@app.route("/")
def 

@app.route("/list/")
def movie_lis():
    cursor = mysql.connection.cursor()
    query_string = "SELECT * FROM movies_tbl"
    cursor.execute(query_string)
    data = cursor.fetchall()
    cursor.close()
    return json.dumps(data)

@app.route("/table/")
def movie_table():
    cursor = mysql.connection.cursor()
    query_string = "SELECT * FROM movies_tbl"
    cursor.execute(query_string)
    data = cursor.fetchall()
    cursor.close()
    return render_template("movies.html")

if __name__ == "__main__":
    app.run(host="127.0.0.1")