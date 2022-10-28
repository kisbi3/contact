import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
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
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        // FlatButton 없음!!
        //ElevatedButton, Raised button, Floating action button : 기능상에서는 별 차이가 없음
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('New Snack Bar'),
            ));
          },
          child: Text('show me',
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
