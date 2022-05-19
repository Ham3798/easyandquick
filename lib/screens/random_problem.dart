import 'dart:convert';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'problem.dart';
import 'package:http/http.dart' as http;

// https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/#6
// https://codelabs.developers.google.com/codelabs/first-flutter-app-pt2/#4

class random_problem extends StatelessWidget {
  const random_problem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const RandomProblems(),
    );
  }
}

class RandomProblems extends StatefulWidget {
  const RandomProblems({Key? key}) : super(key: key);

  @override
  State<RandomProblems> createState() => _RandomProblemsState();
}

class _RandomProblemsState extends State<RandomProblems> {
  final _suggestions = <WordPair>[]; // 단어 저장
  final _biggerFont = const TextStyle(fontSize: 18); // 스타일
  var _idList;
  var _strList;

  @override
  void initState() {
    // 서버 통신.
    // TODO: implement initState
    super.initState();
    _asyncMethod();
  }

  _asyncMethod() async {
    final response_ID = await http.get(
        Uri.parse('http://127.0.0.1:5000/problems/id'));
    final decoded_ID = json.decode(response_ID.body) as List<dynamic>;

    final response_str = await http.get(
        Uri.parse('http://127.0.0.1:5000/problems/str'));
    final decoded_str = json.decode(response_str.body) as List<dynamic>;
    setState(() {
      _idList = decoded_ID;
      _strList = decoded_str;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('추천 알고리즘'),
        ),
        body: ListView.builder(
            itemCount: _idList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       CupertinoPageRoute(builder: (context) => problem())
                //   );
                // },
                title: Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  child: Text(_strList[index], textAlign: TextAlign.start,style: _biggerFont,),
                ),
              );
            })
    );
  }
}