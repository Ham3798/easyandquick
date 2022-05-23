from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/', methods = ['GET'])
def index(): #hello world 느낌.
    response = jsonify({'greetings' : 'Hi! this is python'})
    response.headers.add("Access-Control-Allow-Origin", "*") 
    return response

@app.route('/problems/id', methods = ['GET']) # flutter random_problems 페이지
def problemsID(): # flutter random_problems 페이지에서 다음 예시와 같은 형태로 추천 알고리즘을 통해 추천받은 문제의 ID들을 순서대로 List 형태로 fluter 서버에 쏴주면 이걸 바탕으로 flutter 페이지에 문제들을 집어 넣음.
    str = ["5", "12", "1", "14"]
    response = jsonify(str)
    response.headers.add("Access-Control-Allow-Origin", "*") 
    return response

@app.route('/problems/str', methods = ['GET']) # flutter random_problems 페이지
def problemsSTR(): # flutter random_problems 페이지에서 다음 예시와 같은 형태로 추천 알고리즘을 통해 추천받은 문제의 ID들을 순서대로 List 형태로 fluter 서버에 쏴주면 이걸 바탕으로 flutter 페이지에 문제들을 집어 넣음.
    str = [
        "2.1 두 사건 A, B에 대하여 P(A)=, P(B)=, P(AB)=일 때, 다음을 구하라.",
        "2.3 주사위 1개를 두 번 던지는 시행에 대하여 다음을 구하라.", 
        "2.5 어떤 동전을 여러 번 던졌더니 앞면이 나올 확률이 뒷면이 나올 확률의 2배였다. 이때 동전의 앞면과 뒷면이 나올 확률을 각각 구하라.",
        "2.7 두 사건 A, B가 서로 배반사건이고, P(A) = 0.4, P(AB) = 0.6 일 때, P(B)를 구하라."
        ]
    response = jsonify(str)
    response.headers.add("Access-Control-Allow-Origin", "*") 
    return response

@app.route('/problem/get', methods = ['GET']) # flutter problem 페이지
def problemGET(): 
    # flutter random_problems 페이지에서 특정 문제를 누르면(on top 메소드) flutter에서 여기로 해당 문제의 문제 ID를 주면, Flask에서 데이터베이스에 문제 ID를 검색해서 해당 문제의 데이터를 Map_json 형태로 보내줌.
    str = { 
  "id": "12312",
  "str":"2.3 주사위 1개를 두 번 던지는 시행에 대하여 다음을 구하라.",
  "name":"함민범",
  "bookmark" : "32",
  "like" : "2"
}
    response = jsonify(str)
    response.headers.add("Access-Control-Allow-Origin", "*") 
    return response


@app.route('/problem/post', methods = ['POST']) # flutter problem 페이지
def problemPOST(): 
    print(request.is_json)
    params = request.get_json()
    print(params['id'])
    return 'ok'

if __name__=="__main__":
    app.run(debug = True)