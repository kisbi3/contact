import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
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
        title: Text("Scaffold Messenger"),
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Like a new Snack bar!'),
            duration: Duration(seconds: 5),
            action: SnackBarAction(label: 'Undo', onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
              );
            }),
          ));
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()),);
          },
          child: Text('Go to the Second Page')
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(
            '"좋아요"가 추가 되었습니다.',
                style: TextStyle(
            fontSize: 20.0,
            color: Colors.redAccent,
        ),
        ),
      ),
    );
  }
}

// Snackbar가 다른 페이지로 갔을 때 바로 사라지게 하려면...
// 개별적인 ScaffoldMessenger를 생성해야 함!
//      => Scaffold를 ScaffoldMessenger로 감싸기고 Builder 함수를 이용해야 함.
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '"좋아요"를 취소 하시겠습니까?',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.redAccent,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('"좋아요"가 취소되었습니다.'),
                              duration: Duration(seconds: 3),
                            )
                        );
                      },
                      child: Text("취소하기"))
                ],
              ),
              //    Center 위젯은 return된 위젯이므로 ; 붙여야 함.
            );
          }
        ),
      ),
    );
  }
}
