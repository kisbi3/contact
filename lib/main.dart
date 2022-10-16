import 'package:flutter/material.dart';

void main() {
  //runApp : 앱 구동 명령어
  runApp(const MyApp());
}

//아래 네줄은 그냥 시작하는 문법임(몰라도 됨)
//stless하고 tab하면 됨
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    // 실제 코딩은 이 아래부터 시작
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text('앱임'),),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 50, height: 50, color: Colors.blue,
            margin: EdgeInsets.all(20 ),
          ),
        ),
      )
    );
  }
}
