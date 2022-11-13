import "package:contact2/ScreenA.dart";
import 'package:contact2/ScreenB.dart';
import 'package:contact2/ScreenC.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Multipage 구현 할 때에 핵심적인 것 :
    // initialRoute : 제일 처음에 보일 화면 (home argument 대신 사용)
    // routes :
    return MaterialApp(
      // initialRoute 는 무조건 '/'. 아래와 같이 쓰면 됨.
      initialRoute: '/',
      // 그리고 다른 페이지들을 'String'으로 dictionary 형태로 만들어 준다고 생각하자.
      routes: {
        // initialRoute가 ScreenA라는 것.
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}
