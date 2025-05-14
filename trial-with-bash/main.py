# trial used with bash
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "My name is Docker.I'm used for contianerization"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
