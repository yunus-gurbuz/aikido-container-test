from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Aikido test container running. API_KEY is: " + os.environ.get("API_KEY", "not set")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
