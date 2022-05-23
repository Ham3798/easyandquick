import encodings
from operator import ge
import pymysql

db = pymysql.connect(host="localhost", user="root", password="yoonsik11!", charset="utf8")
cursor = db.cursor()
cursor.execute('USE easyandquick;')

# 테이블 만들기
def create_table():
    #user table
    # user_id, user_name, 
    sql = '''CREATE TABLE user (
            user_id Int,
            user_name CHAR(100));'''
    cursor.execute(sql)

    # problem table
    # problem_genres, problem_id, problem_title, problem_wrong_answer_rate, problem_vote_like, problem_text
    sql = '''CREATE TABLE promblem(
        problem_genres CHAR(30),
        problem_id Int,
        problem_title CHAR(10),
        problem_right_answer INT,
        problem_wrong_answer INT,
        problem_vote_like INT,
        problem_text VARCHAR(300),
        problem_solution varchar(300));'''
    cursor.execute(sql)

    sql = '''CREATE TABLE image(
        solution'''

    sql = '''CREATE TABLE recommend_data (
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



def read_ratings_csv():
    import csv

    ratings_src = "C:\\Users\\ham3798\\Documents\\python\\ratings___small.csv"

    f = open(ratings_src, 'r')
    rdr = csv.reader(f)
    
    for data in rdr:
        user_id = data[0]
        problem_id = data[1]
        rating = data[2]
        print(user_id, problem_id, rating)

        sql = "INSERT INTO tag VALUES("+data[0]+",'"+data[1]+"')"
        print(sql)
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

        print(problem_right_answer, problem_wrong_answer)
        
        # print(list_genres_id)
        # print(list_genres_id, problem_id, problem_title, problem_right_answer, problem_wrong_answer, problem_vote_like)
        # print(problem_text, problem_solution)
        # print(list_genres_id)
        
        sql = "INSERT INTO tag VALUES("+list_genres_id+",'"+problem_id+",'"+problem_title+",'"+problem_right_answer+",'"+problem_wrong_answer+",'"+problem_vote_like+",'"+problem_text+",'"  + problem_solution + "')"
        print(sql)
        cursor.execute(sql)


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


read_exam_metadata_csv()