import 'dart:convert';

import 'package:english_words/english_words.dart';
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
  var _problemMap;
  var _keys;

  @override
  void initState() { // 서버 통신.
    // TODO: implement initState
    super.initState();
    _asyncMethod();
  }

  _asyncMethod() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:5000/problems'));
    final decoded = json.decode(response.body) as Map<int, dynamic>;
    setState(() {
      _problemMap = decoded;
      _keys = _problemMap.keys;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('문제 추천 알고리즘'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          return ListTile(

            title: Text( // 저장된 문제 불러오기
              ('$index = $_problemMap' + _suggestions[index].asPascalCase),
              style: _biggerFont,
            ),
            onTap: () {
              setState(() { // 상태가 변경되었음을 프레임워크에 알림

              });
            },
          );
        },
      ),
    );
  }
}

