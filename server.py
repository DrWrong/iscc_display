#!/usr/bin/env python3
from bottle import route, run, jinja2_view as view, static_file, get
import os
import requests
from bottle.ext.websocket import GeventWebSocketServer
from bottle.ext.websocket import websocket
import time


# app =
# app = Bottle()
BASE_DIR = os.path.dirname(__file__)

# oldlist = []


def get_flaglist():
    r = requests.get("http://10.15.0.61:8080/api.html")
    jsondict = r.json()
    hostinfo = jsondict["hosts"]
    # hostinfo.sort(key=lambda x:x["id"])
    flaglist = ["flag0.png" for i in range(28)]
    for eachhost in hostinfo:
        flaglist[eachhost["id"] - 1] = "flag%d.png" % eachhost["tid"]
    # flaglist = ["flag2.png" for i in range(28)]
    return flaglist


@route('/')
@view("test")
def index():
    flaglist = get_flaglist()
    # print(flaglist)
    return dict(flaglist=flaglist)


@route('/static/<filename:path>')
def server_static(filename):
    print(filename)
    return static_file(filename, root=os.path.join(BASE_DIR, 'static'))


@get('/websocket', apply=[websocket])
def listen_for_event(ws):
    oldlist = []
    while True:
        if oldlist and oldlist != get_flaglist():
            oldlist = get_flaglist()
            ws.send("flag changed")
        time.sleep(20)


run(host="0.0.0.0", port=80, debug=True, server=GeventWebSocketServer)
