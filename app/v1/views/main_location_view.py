import json

import functools

from flask import (
    Blueprint, flash, g, abort, make_response, request, jsonify
)
my_v1 = Blueprint('location', __name__, url_prefix='/api/v1')
@my_v1.route("/main_location", methods=["POST"])
def post():
	pass


	