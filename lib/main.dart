import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//MyApp은 stateless Widget이므로, stl+tab 하고 이름에 MyApp 넣기!
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱을 통칭하는 이름(예를 들어 최근 앱 보기에 나타나는 이름)
      title: 'First app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BBANTO'),
      ),
    );
  }
}
