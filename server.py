#!/usr/bin/env python
from bottle import route, run, jinja2_view as view, static_file, get
import os
import requests
from bottle.ext.websocket import GeventWebSocketServer
from bottle.ext.websocket import websocket
import time
import threading


# app =
# app = Bottle()
BASE_DIR = os.path.dirname(__file__)

# oldlist = []


def get_flaglist():
    r = requests.get("http://10.15.0.67:8080/api.html")
    jsondict = r.json()
    hostinfo = jsondict["hosts"]
    hostinfo.sort(key=lambda x: x["id"])
    flaglist = []
    for eachhost in hostinfo:
        flaglist.append(
            "flag%d.png" % (eachhost.get("tid", 0)))
            # flaglist = ["flag2.png" for i in range(28)]
    return flaglist


class myThread(threading.Thread):

    def __init__(self, ws, *args, **kwargs):
        self.ws = ws
        super(myThread, self).__init__(*args, **kwargs)

    def run(self):
        oldlist = []
        while True:
            if oldlist and oldlist != get_flaglist():
                oldlist = get_flaglist()
                self.ws.send("flag changed")
            time.sleep(5)


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
    thread = myThread(ws)
    thread.start()
    # ws.send("flag changed")


run(host="0.0.0.0", port=80, debug=True, server=GeventWebSocketServer)
