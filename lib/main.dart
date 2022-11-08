import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              // SecondPage를 FirstPage위로 올리려면, FirstPage의 위치를 정확히 알아야 함.
              // 따라서 Navigator.push에는 context가 필수!
              // 여기에서는 context가 FirstPage의 BuildContext 'context'를 불러옴
              //Navigator.push의 route 에 MaterialPageRoute를 불러옴
              Navigator.push(context, MaterialPageRoute(
                  //MaterialPageRoute를 사용하면 자동으로 android에서 사용하는 animation 사용
                  builder: (context) => SecondPage()));
            },
            child: Text('Go to the Second page'),
        ),
      ),
    );
  }
}

// SecondPage를 불러올 때에는 FirstPage를 지우고 들어오는 것이 아니라, 그 위에 얹어진다는 것을 잊지 말자.
// 따라서, FirstPage로 돌아오기 위해서는 SecondPage를 지워주기만 하면 됨!
//    => pop으로 지워주기만 하면 됨!
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  // 단순히 혼동을 피하기위해 context -> ctx로 변경
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(ctx);
          },
          child: Text('Go to the First page'),
        ),
      ),
    );
  }
}

