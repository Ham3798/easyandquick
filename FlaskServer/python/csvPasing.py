import csv
import sort

def problemsSTR_csv(recommend_list_ids):
    exam_metadata_src = ".\\exam_metadata.csv"

    f = open(exam_metadata_src, 'r')
    rdr = csv.reader(f)
    strList = list()
    returnList = list()

    for data in rdr:
        strList.append(data[6])

    for i in recommend_list_ids:
        returnList.append(strList[int(i)-1])

    return returnList

def problemsID_csv():
    exam_metadata_src = ".\\exam_metadata.csv"

    f = open(exam_metadata_src, 'r')
    rdr = csv.reader(f)
    IDList = set()
    recommendList = sort.recommend()

    for data in rdr:
        if data[2] in recommendList:
            IDList.add(data[1])

    return IDList


def read_problem_str(id):
    exam_metadata_src = ".\\exam_metadata.csv"

    f = open(exam_metadata_src, 'r')
    rdr = csv.reader(f)



    for data in rdr:
        if data[1] == id:
            return data[6]

            

def read_exam_metadata_csv():

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

