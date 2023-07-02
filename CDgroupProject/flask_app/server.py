from flask import Flask
from server import app
from flask_cors import CORS, cross_origin
app = Flask(__name__)
cors = CORS(app)

from flask_app.controllers import user_controller

if __name__ == "__main__":
    app.run(debug=True)