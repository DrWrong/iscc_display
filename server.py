#!/usr/bin/env python
#encoding = utf-8
from bottle import route, run, jinja2_view as view, static_file, request, Bottle
import os
import gevent
import requests
# from bottle.ext.websocket import GeventWebSocketServer
# from bottle.ext.websocket import websocket
import time
# import threading


# app =
app = Bottle()
BASE_DIR = os.path.dirname(__file__)

# oldlist = []


def get_flaglist():
    r = requests.get("http://localhost:8080/grade2/api.html")
    jsondict = r.json()
    hostinfo = jsondict["hosts"]
    hostinfo.sort(key=lambda x: x["id"])
    flaglist = []
    for eachhost in hostinfo:
        flaglist.append(
            "flag%d.png" % (eachhost.get("tid", 0)))
            # flaglist = ["flag2.png" for i in range(28)]
    return flaglist


# class myThread(threading.Thread):

#     def __init__(self, ws, *args, **kwargs):
#         self.ws = ws
#         super(myThread, self).__init__(*args, **kwargs)

#     def run(self):


@app.route('/')
@view("test")
def index():
    flaglist = get_flaglist()
    # print(flaglist)
    return dict(flaglist=flaglist)


@app.route('/static/<filename:path>')
def server_static(filename):
    print(filename)
    return static_file(filename, root=os.path.join(BASE_DIR, 'static'))


@app.route('/websocket')
def listen_for_event():
    # thread = myThread(ws)
    wsock = request.environ.get('wsgi.websocket')
    oldlist = []
    while True:

        if oldlist != get_flaglist():
            if oldlist:
                wsock.send("flag changed")
            oldlist = get_flaglist()
        gevent.sleep(5)
        # wsock.send("flag changed")
    # ws.send("flag changed")
from gevent.pywsgi import WSGIServer
from geventwebsocket.handler import WebSocketHandler
server = WSGIServer(("0.0.0.0", 8000), app,
                    handler_class=WebSocketHandler)
server.serve_forever()
