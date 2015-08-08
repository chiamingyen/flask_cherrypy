#!/usr/bin/python
# 導入 os 模組, 主要用來判斷是否在 OpenShift 上執行
import os

#### for flask
# 導入同目錄下的 myflaskapp.py
import myflaskapp
#### ends for flask

#### for cherrypy
import cherrypy
#導入同目錄下的 mycherrypy.py
import mycherrypy
root = mycherrypy.MyCherrypy()
#### ends for cherrypy

# 決定要使用 cherrypy 或 flask
#framework = "cherrypy"
framework = "flask"

# 根據所選擇的框架執行應用程式
if framework == "cherrypy":
    if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
        # operate in OpenShift
        application = cherrypy.Application(root, config = root.application_conf)
    else:
        # operate in localhost
        cherrypy.quickstart(root, config = root.application_conf)
else:
    # framework 為 flask
    if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
        # 表示程式在雲端執行
        application = myflaskapp.app
    else:
        # 表示在近端執行
        myflaskapp.app.run()
    

