#!flask/bin/python
from flask import Flask

@app.route('/')
def index():
    return "Hello, World!"

if __name__ == '__main__':
    app.run(threaded=True, debug=True)