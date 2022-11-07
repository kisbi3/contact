import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      // SafeArea : 표현하려는 것이 화면 밖으로 나가는 것을 방지하는 역할.
      body: SafeArea(
        // Container는 최대한 큰 공간을 차지하려고 함!(child가 없는 경우.)
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 20,
          ),
          padding: EdgeInsets.all(20),
          // child가 있는 경우에는 child 크기로 Container가 작아짐!
          child: Text("Hello"),
        ),
      ),
    );
  }
}
