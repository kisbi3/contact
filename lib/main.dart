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
      backgroundColor: Colors.green,
      // SafeArea : 표현하려는 것이 화면 밖으로 나가는 것을 방지하는 역할.
      body: SafeArea(
        // Center : 상하좌우로 중앙에 위치하도록 함.
        child: Center(
          // Column : 세로 축으로는 최대 크기 차지함
          //          가로 크기는 childern의 크기 만큼 차지함.
          child: Column(
            // Column이 세로 축으로 최대 크기를 차지함으로 Center 위젯은 세로 축 정렬 능력을 상실함.
            // 따라서 중앙에 배치 하기 위해서는 mainAxisAlignment를 사용해야 함!
            mainAxisAlignment: MainAxisAlignment.center,

            // mainAxisSize를 min으로 하면 Column이 children 크기로 한정되기 때문에,
            //이 경우에는 Center 위젯으로 중앙 정렬을 할 수 있음!
            mainAxisSize: MainAxisSize.min,

            // verticalDirection - children 정렬
            // up : 아래에서부터 위로 정렬, down : 위에서부터 아래로 정렬
            verticalDirection: VerticalDirection.up,

            // spaceEvenly : 일정 간격을 두고 배치
            // spaceBetween : 정확히 상.중.하 로 배치
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            // CrossAxisAlignment.end : 가로축 끝 점 정렬
            // CrossAxisAignment.stretch : 이거 이용하고 Container의 width 모두 제거 - 가로 방향으로 화면을 꽉 채우게 만듦!
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('Container 1'),
              ),
              // 이 사이에 간격을 넣으려면 그냥 SizedBox 넣자.
              Container(
                width: 400,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 3'),
              ),
              Container(
                // 보이지 않는 Container(invisable container)를 이용한 끝 점 정렬
                width: double.infinity,
              )
            ],
          ),
        )
      ),
    );
  }
}
