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
  var _name;
  var _str;
  var _bookmark;
  var _like;

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
      _name = decoded['name'];
      _bookmark = decoded['bookmark'];
      _like = decoded['like'];
      _str = decoded['str'];
    });
  }

  _post() async {
    String url = 'http://127.0.0.1:5000/problem/post';

    http.Response response = await http.post(
      Uri.parse(url),
      headers: <String, String> {
        'String': 'application/x-www-form-urlencoded',
      },
      body: <String, String> {
        'id': widget.id,
      },
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('id :' + widget.id + ' name :' + _name),
        ),
        body: Column(
          children: [
            Text('bookmark : ' + _bookmark),
            Text('like : ' + _like),
            Text('str : ' + _str),
          ],
        )
    );
  }
}