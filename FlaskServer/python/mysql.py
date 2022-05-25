import encodings
from operator import ge
import pymysql
import csvPasing

db = pymysql.connect(host="localhost", user="root", password="yoonsik11!", charset="utf8")
cursor = db.cursor()
cursor.execute('USE easyandquick;')

# 테이블 만들기
def create_table():
    #user table
    # user_id, user_name, 
    sql = '''CREATE TABLE user (
            user_id INT,
            user_name CHAR(100));'''
    cursor.execute(sql)

    # problem table
    # problem_genres, problem_id, problem_title, problem_wrong_answer_rate, problem_vote_like, problem_text
    sql = '''CREATE TABLE problem(
        problem_genres VARCHAR(30),
        problem_id Int,
        problem_title VARCHAR(100),
        problem_right_answer INT,
        problem_wrong_answer INT,
        problem_vote_like INT,
        problem_text VARCHAR(300),
        problem_solution VARCHAR(300));'''
    cursor.execute(sql)

    sql = '''CREATE TABLE image(
        solution'''

    sql = '''CREATE TABLE ratings (
            user_id INT,
            problem_id INT,
            rating float);'''
    cursor.execute(sql)


    sql = '''CREATE TABLE tag (
            tag_id Int,  
            tag_name CHAR(100));''' #베르누이 법칙
    cursor.execute(sql)
#PROMBLEM TABLE에 들어가는 ID가 100부터 시작한다.
# sql = '''ALTER TABLE PROBLEM AUTO_INCREMENT=100;''' 


def read_user_data_csv():
    import csv

    name_csv = ".\\name.csv"
    f = open(name_csv, 'r')
    rdr = csv.reader(f)
    i = [i for i in range(1,101)]
    for data1, data2 in zip(i, rdr):
        read = str(data1)
        sql = "INSERT INTO user VALUES("+read+",'"+data2[0]+"')"
        
        #print(sql)
        cursor.execute(sql)
    db.commit()


def read_ratings_csv():
    import csv

    ratings_src = ".\\rating.csv"

    f = open(ratings_src, 'r')
    rdr = csv.reader(f)
    
    for data in rdr:
        user_id = data[0]
        problem_id = data[1]
        rating = data[2]
        # print(user_id, problem_id, rating)

        sql = "INSERT INTO ratings VALUES("+data[0]+","+data[1]+","+data[2]+")"
        # print(sql)
        cursor.execute(sql)
    db.commit()

def read_exam_metadata_csv():
    import csv

    exam_metadata_src = "C:\\Users\\ham3798\\Documents\\python\\exam_metadata.csv"

    f = open(exam_metadata_src, 'r')
    rdr = csv.reader(f)
    
    for data in rdr:
        #genres	id	title	wrong_answer_rate	vote_like
        genres = data[0]
        
        list_genres_id = ""
        genres = genres[1:]
        genres = genres.split(" ")
        for i in range(len(genres)):
            if genres[i] == genres[0]:
                list_genres_id += (genres[i+1][0:-1]) + " "



        problem_id = data[1]
        problem_title = data[2]
        problem_right_answer = int(float(data[3])*10)
        problem_wrong_answer = 100 - problem_right_answer
        problem_wrong_answer = str(problem_wrong_answer)
        problem_right_answer = str(problem_right_answer)
        problem_vote_like = data[4]
        problem_text= data[6]
        problem_solution = data[7]

        # print(problem_right_answer, problem_wrong_answer)
        
        # print(list_genres_id)
        # print(list_genres_id, problem_id, problem_title, problem_right_answer, problem_wrong_answer, problem_vote_like)
        # print(problem_text, problem_solution)
        # print(list_genres_id)
        
        sql = "INSERT INTO problem VALUES('"+list_genres_id+"',"+problem_id+",'"+problem_title+"',"+problem_right_answer+","+problem_wrong_answer+","+problem_vote_like+",'"+problem_text+"','"  + problem_solution + "')"
        print(sql)
        # cursor.execute(sql)


def subject_id_csv():
    import csv

    exam_metadata_src = "C:\\Users\\ham3798\\Documents\\python\\title_id.csv"

    f = open(exam_metadata_src, 'r')
    rdr = csv.reader(f)
    
    for data in rdr:
        sql = "INSERT INTO tag VALUES("+data[0]+",'"+data[1]+"')"
        print(sql)
        cursor.execute(sql)
    db.commit()

# create_table()
# read_ratings_csv()
# read_user_data_csv()
# subject_id_csv()


def problemsSTR_sql():
    recommend = csvPasing.problemsID_csv()
    return_list = list()
    for i in recommend:
        sql = "SELECT problem_text FROM problem WHERE problem_id = " + i

        cursor.execute(sql)
        res = cursor.fetchone()[0]

        return_list.append(res)
    return return_list
    

def problemGET_sql(id):
    str = csvPasing.read_problem_str("3")

    sql = "SELECT problem_text FROM problem WHERE problem_id = " + id

    cursor.execute(sql)
    str = cursor.fetchone()[0]

    return str