import json
from urllib import response
from flask import Flask, jsonify, request
from numpy import sort
import sort
import csvPasing
import mysql

app = Flask(__name__)


@app.route('/', methods = ['GET'])
def index(): #hello world 느낌.
    response = jsonify({'greetings' : 'Hi! this is python'})
    response.headers.add("Access-Control-Allow-Origin", "*") 
    return response

@app.route('/problems/id', methods = ['GET']) # flutter random_problems 페이지
def problemsID(): # flutter random_problems 페이지에서 다음 예시와 같은 형태로 추천 알고리즘을 통해 추천받은 문제의 ID들을 순서대로 List 형태로 fluter 서버에 쏴주면 이걸 바탕으로 flutter 페이지에 문제들을 집어 넣음.

    str = csvPasing.problemsID_csv()
    response = jsonify(list(str))
    print(str)
    response.headers.add("Access-Control-Allow-Origin", "*") 
    return response

@app.route('/problems/str', methods = ['GET']) # flutter random_problems 페이지
def problemsSTR(): # flutter random_problems 페이지에서 다음 예시와 같은 형태로 추천 알고리즘을 통해 추천받은 문제의 ID들을 순서대로 List 형태로 fluter 서버에 쏴주면 이걸 바탕으로 flutter 페이지에 문제들을 집어 넣음.
    str = mysql.problemsSTR_sql()
    response = jsonify(str)
    response.headers.add("Access-Control-Allow-Origin", "*") 
    return response

@app.route('/problem/get', methods = ['POST', 'GET']) # flutter problem 페이지
def problemGET(): 
    # flutter random_problems 페이지에서 특정 문제를 누르면(on top 메소드) flutter에서 여기로 해당 문제의 문제 ID를 주면, Flask에서 데이터베이스에 문제 ID를 검색해서 해당 문제의 데이터를 Map_json 형태로 보내줌.
    global id
    if(request.method == 'POST'):
        request_data = request.data
        request_data = json.loads(request_data.decode('utf-8'))
        id = request_data['id']
        response = jsonify({'id':id})
        response.headers.add("Access-Control-Allow-Origin", "*") 
        return response
    if(request.method == 'GET'):
        str = mysql.problemGET_sql(id)
        tag = mysql.problemTagGET_sql(id)
        # print(tag, str)
        sort.num_Set(int(id))
        # sort.num_Set(id)

        response = jsonify({'str':str, 'tag':tag})
        response.headers.add("Access-Control-Allow-Origin", "*") 
        return response
        
    # response = jsonify(str)
    # response.headers.add("Access-Control-Allow-Origin", "*") 
    # return response


if __name__=="__main__":
    app.run(debug = True)
