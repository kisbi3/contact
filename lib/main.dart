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
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: SizedBox(
            child: Text('금호동3가')
          ),
          title: Text(
              '금호동3가',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            Icon(Icons.search, color: Colors.black), Icon(Icons.menu, color: Colors.black), Icon(Icons.star, color: Colors.black),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: Image.asset(
                    'COVER1.jpg',
                    width: 150,
                    height: 150,
                ),
              ),
              Flexible(
                flex: 7,
                child: Container(
                  width: 330,
                  padding: EdgeInsets.fromLTRB(10,0,50,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          // child: Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)'),
                            child: RichText(
                          overflow: TextOverflow.clip,
                          maxLines: 5,
                          text: TextSpan(
                            text: '캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0,5,0,5),
                        child: Text('성동구 행담동 · 끌올 10분 전',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Text('210,000원',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite_border, color: Colors.grey,),
                          Text('4', style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
