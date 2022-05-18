import 'package:easyandquick/screens/random_lottery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'random_lottery.dart';
import 'package:http/http.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login_Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final  String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('ID : ham3798'),
              Text('PW : *******', style: Theme
                  .of(context)
                  .textTheme
                  .displaySmall)
            ]),

      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => random_word())
          );
        },
        tooltip: '구글 로그인?',
        label: Text('로그인'),
        icon: Icon(Icons.login_outlined),
      ),
    );
  }
}