import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //현재 줄부터 코딩 시작.
      //위젯 4가지. 글자 위젯 이미지 위젯 아이콘 위젯 박스 위젯.
      //home: Text('안녕')
      //home: Icon(Icons.star)
      //home: Image.asset('logo.png')
      //home: Container( width: 50, height: 50, color: Colors.blue ) //50LP == 1.2cm

      // home: Center(
      //     child: Container( width: 50, height: 50, color: Colors.blue ),
      // )

        home: Scaffold( // 상, 중, 하로 나누는 위젯.
          appBar: AppBar(
            title: Text('앱임'),
          ),
          body: Row (
            mainAxisAlignment: MainAxisAlignment.center, // 가로축 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 세로축 정렬
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              children: [

                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          ),
        )
    );
  }
}