#!/usr/bin/env python3
from bottle import route, run, jinja2_view as view, static_file
import os
# app =
# app = Bottle()
BASE_DIR = os.path.dirname(__file__)


@route('/')
@view("test")
def index():
    flaglist = ["flag1.png" for i in range(28)]
    return dict(flaglist=flaglist)


@route('/static/<filename:path>')
def server_static(filename):
    print(filename)
    return static_file(filename, root=os.path.join(BASE_DIR, 'static'))


run(host="0.0.0.0", port=8080, debug=True)
