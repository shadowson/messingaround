#!flask/bin/python
from flask import Flask
import os
import random

prt = random.randint(4000,5001)

app = Flask(__name__)

@app.route('/')
def index():
    if os.environ.get('RUNID') is not None and os.environ.get('RUNID') != '':
        RUNID = os.environ.get('RUNID')
    else:
        RUNID = 'FAILED TO RETRIEVE RUNID'
    if os.environ.get('PHRASE') is not None and os.environ.get('PHRASE') != '':
        PHRASE = os.environ.get('PHRASE')
    else:
        PHRASE = ''

    s = PHRASE + " - " + RUNID
    return s

if __name__ == '__main__':
    app.run(threaded=True, debug=True, port=prt)