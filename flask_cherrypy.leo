<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="amd.20150808105159.1" a="E"><vh>@settings</vh>
<v t="amd.20150808105159.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="amd.20150808105159.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="amd.20150808105021.2" a="E"><vh>專案說明</vh>
<v t="amd.20150808105401.1"><vh>PyGroup 技術</vh></v>
<v t="amd.20150808110254.1"><vh>CherryPy 技術</vh></v>
<v t="amd.20150808105941.1"><vh>Flask 技術</vh></v>
</v>
<v t="amd.20150808110552.1" a="E"><vh>@path ./</vh>
<v t="amd.20150808110552.2"><vh>@edit setup.py</vh></v>
<v t="amd.20150808110552.3"><vh>@edit wsgi.py</vh></v>
<v t="amd.20150808110552.4"><vh>@edit myflaskapp.py</vh></v>
<v t="amd.20150808112130.1"><vh>@edit mycherrypy.py</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="amd.20150808105021.2">這個專案希望能夠邊寫一個能夠同時支援 Cherrypy 與 Flask 框架的網際程式, 同時比較兩種不同技術的差別</t>
<t tx="amd.20150808105159.1"></t>
<t tx="amd.20150808105159.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="amd.20150808105159.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="amd.20150808105401.1">以 Gmail 帳號登入, 希望可以改為 oauth2 的技術登入

ORM 使用 peewee</t>
<t tx="amd.20150808105941.1">從 https://flask-peewee.readthedocs.org/en/latest/ 可以得知

http://flask-admin.readthedocs.org/en/latest/ 與 

https://pythonhosted.org/Flask-Security/ 導致 flask-peewee 停止開發

flask 與 peewee 的範例: http://peewee.readthedocs.org/en/latest/peewee/example.html 或

http://docs.peewee-orm.com/en/1.0.0/peewee/example.html</t>
<t tx="amd.20150808110254.1">比較詳細的用法說明: http://blog.kmol.info/index763e.html?p=856

可以設法將相關功能採以 flask 框架實現, 然後進行比較</t>
<t tx="amd.20150808110552.1"></t>
</tnodes>
</leo_file>
