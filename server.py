#!/usr/bin/env python3
from bottle import route, run, jinja2_view as view, static_file
import os
import requests
# app =
# app = Bottle()
BASE_DIR = os.path.dirname(__file__)


@route('/')
@view("test")
def index():
    # r = requests.get("http://10.15.0.61:8080/api.html")
    # jsondict = r.json()
    # hostinfo = jsondict["hosts"]
    # hostinfo.sort(key=lambda x:x["id"])
    flaglist = ["flag1.png" for i in range(28)]
    # for eachhost in hostinfo:
    #     flaglist[eachhost["id"] - 1] = "flag%d.png" % eachhost["tid"]
    # flaglist = ["flag2.png" for i in range(28)]
    # print(flaglist)
    return dict(flaglist=flaglist)


@route('/static/<filename:path>')
def server_static(filename):
    print(filename)
    return static_file(filename, root=os.path.join(BASE_DIR, 'static'))


run(host="localhost", port=8080, debug=True)
