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

        //actions : 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
        actions: [
          IconButton(
              onPressed: () {
                // Icon을 눌렀을 때 아래 함수가 실행됨.
                print('shopping cart button is clicked');
              },
              icon: Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                // Icon을 눌렀을 때 아래 함수가 실행됨.
                print('search button is clicked');
              },
              icon: Icon(Icons.search)),
        ],
      ),
      // 왼쪽 위에 넣는 menu 대신 씀.
      drawer: Drawer(
        // List View 란?
        // 세로 방향으로 여러가지 보여 주는 것.
        child: ListView(
          // List View 내부에서 여백이 필요 없음
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                // 현재 사용자의 이미지
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('lisaCover.jpg'),
                backgroundColor: Colors.white,
              ),
              //복수형에서 알 수 있듯이, 여러개 가능!
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('aimerCover.jpg'),
                  backgroundColor: Colors.white,
                ),
                //여러개 할 경우 가로로 추가됨!!
                // CircleAvatar(
                //   backgroundImage: AssetImage('aimerCover.jpg'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text('MyName'),
              accountEmail: Text('MyEmail@email.com'),
              // 클릭을 하면 추가 정보를 보여주는 버튼
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                //경계선을 원형처리 할 때 사용
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              //leading은 시작점에 배치
              //trailing은 마지막에 배치
              leading: Icon(Icons.home,
              color: Colors.grey[850]
              ),
              title: Text('Home'),
              // 클릭 했을때 물결 표시는 onTap에서 기본적으로 제공.
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              //leading은 시작점에 배치
              //trailing은 마지막에 배치
              leading: Icon(Icons.settings,
                  color: Colors.grey[850]
              ),
              title: Text('Settings'),
              // 클릭 했을때 물결 표시는 onTap에서 기본적으로 제공.
              onTap: (){
                print('Settings is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              //leading은 시작점에 배치
              //trailing은 마지막에 배치
              leading: Icon(Icons.question_answer,
                  color: Colors.grey[850]
              ),
              title: Text('Q&A'),
              // 클릭 했을때 물결 표시는 onTap에서 기본적으로 제공.
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
