# coding: utf-8
import os
from flask import Flask, send_from_directory
app = Flask(__name__)

# setup static directory
@app.route('/static/<path:path>')
def send_static(path):
    return send_from_directory('static', path)
    
@app.route("/")
def index():
    return " flask"

if __name__ == "__main__":
    if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
        # 表示程式在雲端執行
        application = app
    else:
        # 表示在近端執行
        app.run()

