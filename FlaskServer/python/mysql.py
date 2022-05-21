import pymysql


db = pymysql.connect(host="localhost", user="root", password="yoonsik11!", charset="utf8")
cursor = db.cursor()
cursor.execute('USE helloworld;')