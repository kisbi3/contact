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
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        //leading : 아이콘 버튼이나 간단한 위젯을 왼족에 배치할
        leading: IconButton(onPressed: (){
          // Icon을 눌렀을 때 아래 함수가 실행됨.
          print('menu button is clicked');
          },
          icon: Icon(Icons.menu)),
        //actions : 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
        actions: [
          IconButton(onPressed: (){
            // Icon을 눌렀을 때 아래 함수가 실행됨.
            print('shopping cart button is clicked');
          },
              icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){
            // Icon을 눌렀을 때 아래 함수가 실행됨.
            print('search button is clicked');
          },
              icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}
