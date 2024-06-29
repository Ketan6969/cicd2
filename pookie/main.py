from flask import Flask,render_template,redirect

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("home.html")

if __name__ == "__main__":
    app.run(debug=True,
            host= '0.0.0.0',
            port = 5000)