import os
import cherrypy
# get the current directory of the file
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # while program is executed in OpenShift
    download_root_dir = os.environ['OPENSHIFT_DATA_DIR']
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
else:
    # while program is executed in localhost
    download_root_dir = _curdir + "/local_data/"
    data_dir = _curdir + "/local_data/"
        
class MyCherrypy(object):
    _cp_config = {
    # if there is no utf-8 encoding, no Chinese input available
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    # storage_type could be 'ram', 'file', 'cookie' or 'custom'
    'tools.sessions.storage_type' : 'file',
    #'tools.sessions.locking' : 'explicit',
    'tools.sessions.locking' : 'early',
    'tools.sessions.storage_path' : data_dir+'/tmp',
    # session timeout is 60 minutes
    'tools.sessions.timeout' : 60,
    # poll rate for expired session cleanup in minutes
    'tools.sessions.clean_freq': 30
    }
    
    # setup static, images and downloads directories
    application_conf = {
            '/static':{
            'tools.staticdir.on': True,
            'tools.staticdir.dir': _curdir+"/static"},
            '/images':{
            'tools.staticdir.on': True,
            'tools.staticdir.dir': data_dir+"/images"},
            '/downloads':{
            'tools.staticdir.on': True,
            'tools.staticdir.dir': data_dir+"/downloads"}
        }
        
    def __init__(self):
        # hope to create downloads and images directories　
        if not os.path.isdir(data_dir+"downloads"):
            try:
                os.makedirs(data_dir+"downloads")
            except:
                print("mkdir error")
        if not os.path.isdir(data_dir+"images"):
            try:
                os.makedirs(data_dir+"images")
            except:
                print("mkdir error")
        if not os.path.isdir(data_dir+"tmp"):
            try:
                os.makedirs(data_dir+"tmp")
            except:
                print("mkdir error")
                
    @cherrypy.expose
    def index(self, heading=None, *args, **kwargs):
        return "cherrypy"
        
root = MyCherrypy()

if __name__ == "__main__":
    if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
        # operate in OpenShift
        application = cherrypy.Application(root, config = root.application_conf)
    else:
        # operate in localhost
        cherrypy.quickstart(root, config = root.application_conf)
        