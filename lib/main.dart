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
                  // builder는 일종의 '안전장치'!
                  // builder: (context) => SecondPage()));
                  // 위 코드에서 context는 flutter에서 자동으로 할당하므로 의미 없음! : '_'로 바꿀 수 있음
                  builder: (_) => SecondPage()));
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
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar를 만드는 경우에는 뒤로가기 버튼을 자동으로 만들어줌!
      // 그래서 사실 pop method가 필요 없기는 함.
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('Go to the First page'),
        ),
      ),
    );
  }
}

