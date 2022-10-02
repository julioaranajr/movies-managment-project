from flask import Flask, render_template, json
from flask import Request, Response
from flask_mysqldb import MySQL
from werkzeug.wrappers import Request, Response


app = Flask(__name__)
app = Flask("MovieApp")

app.config["MYSQL_HOST"] = "127.0.0.1"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = "my-secret-pw"
app.config["MYSQL_DB"] = "data_movies"

@app.route('/')
def main():
    return render_template('index.html')
if __name__ == "__main__":
    app.run() 

if __name__ == "__main__":
    app.run(host="127.0.0.1")