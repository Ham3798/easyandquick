import 'dart:convert';
import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class problem_Page extends StatelessWidget {
  final String id;

  problem_Page({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'problem_Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: problem(id:id),
    );
  }
}

class problem extends StatefulWidget {
  final String id;
  
  const problem({Key? key, required this.id}) : super(key: key);

  @override
  State<problem> createState() => _problemState();
}

class _problemState extends State<problem> {
  // var _name;
  var _str;
  // var _bookmark;
  // var _like;

  @override
  void initState() {
    // 서버 통신.
    // TODO: implement initState
    super.initState();


    _post();
    _get();
  }

  _get() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:5000/problem/get'));
    final decoded = json.decode(response.body) as Map<String, dynamic>;
    setState(() {
      // _name = decoded['name'];
      // _bookmark = decoded['bookmark'];
      // _like = decoded['like'];
      _str = decoded['str'];
    });
  }

  _post() async {
    String url = 'http://127.0.0.1:5000/problem/get';
    final response = await http.post(Uri.parse(url), body: json.encode({'id' : widget.id}));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
          title:
          Text('문제 ' + widget.id + '번' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Container(
              padding: EdgeInsets.only(top: 5,left: 5,right: 800,bottom: 5),
              child:
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green,
                ),
                padding: EdgeInsets.only(top: 13, left: 10,right: 10,bottom: 10),
                child: Text('#베르누이 분포',style:TextStyle(color: Colors.white)),
              )
          ),
              flex:1),
          Expanded(child: Container(
              padding: EdgeInsets.only(left: 10,right: 20,top: 5,bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 500,
                    width: 800,
                    color: Colors.white,
                    child: Text('$_str',style: TextStyle(fontSize: 40),),
                  ),
                  Container(
                    height: 500,
                    child: Text('신고하기',style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
                ],
              )
          ),
            flex: 6,),
          Expanded(child: Container(
            padding: EdgeInsets.only(left: 70, right: 50, top: 20, bottom: 20),
            child: Container(
              height: 50,
              width: 900,
              color: Colors.white,
              child: Text('정답입력:',style: TextStyle(fontSize: 20),),
            ),
          ),
            flex:2,),
          Expanded(child: Container(
            padding: EdgeInsets.only(top: 10,bottom: 10,left: 300,right: 200),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue,
                  ),
                  height: 100,
                  width: 200,
                  padding: EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 70),
                  child: Text('패스',style: TextStyle(fontSize: 30, color: Colors.white),),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green
                  ),
                  height: 100,
                  width: 200,
                  padding: EdgeInsets.only(top: 20,bottom: 20,right: 20,left: 70),
                  child: Text('확인',style: TextStyle(fontSize: 30, color: Colors.white),),
                )
              ],
            ),
          ),
            flex: 2,)
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home,),
              Icon(Icons.search,),
              Icon(Icons.question_answer,),
              Icon(Icons.account_circle,),
            ],
          ),

        ),
      ),
    );
  }
}