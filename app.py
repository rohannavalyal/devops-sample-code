# app.py
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello, Jenkins Multi-Stage Pipeline!"

if __name__ == "__main__":
    # bind 0.0.0.0 so it listens on all interfaces
    app.run(host="0.0.0.0", port=5000, debug=False)
