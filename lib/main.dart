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
      home: MyButtons(),
    );
  }
}


class MyButtons extends StatelessWidget {
  const MyButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //  그냥 TextButton
            TextButton(
              onPressed: (){
                print("Text Button");
              },
              onLongPress: (){
                print("Text Button2");
              },
              child: Text(
                "Text button",
                style: TextStyle(
                  fontSize: 20.0
                ),
              ),
              style: TextButton.styleFrom(
                // 영상에서는 primary를 사용하였지만, 이제는 사용하지 않는다고 나옴.
                // 대신 foregroundColor 사용!
                foregroundColor: Colors.red,
              // backgroundColor: Colors.blue
              ),
            ),
            // 어느정도 떠서 보이는 버튼(그림자는 elevation으로 설정 가능)
            ElevatedButton(
              onPressed: (){
                print("Elevated button");
              },
                child: Text('Elevated button'),
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.orangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              elevation: 0.0
            ),
            ),

            // 외곽 선이 있는 버튼
            OutlinedButton(
                onPressed: (){
                  print('Outlined button');
                },
                child: Text('Outlined button'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                // 외곽 선 설정
                side: BorderSide(
                  color: Colors.black87,
                  width: 2.0
                )
              ),
            ),

          //  버튼 앞에 아이콘을 넣어야 하는 경우 : .icon
            TextButton.icon(
                onPressed: (){
                  print('Icon button');
                },
                icon: Icon(
                    Icons.home,
                  size: 30.0,
                  color: Colors.black87,
                ),
                label: Text('Go to home'),
              style: TextButton.styleFrom(
                // icon에서 색을 지정하지 않았더라면 여기서 지정하는 색과 동일한 색으로 설정함
                foregroundColor: Colors.purple
              ),
            ),
            ElevatedButton.icon(
                onPressed: (){
                  print('Go to home');
                },
                icon: Icon(
                  Icons.home,
                  size: 20.0,
                ),
                label: Text('Go to home'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                // 크기 설정
                minimumSize: Size(200, 50)
              ),
            ),
            OutlinedButton.icon(
                onPressed: (){
                  print('Go to home');
                },
                icon: Icon(Icons.home),
                label: Text('Go to home'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
              )
            ),
            ElevatedButton.icon(
              //비활성화된 버튼
              onPressed: null,
              icon: Icon(
                Icons.home,
                size: 20.0,
              ),
              label: Text('Go to home'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  disabledBackgroundColor: Colors.pink,
              ),
            ),

          //  context 아래에서 오른쪽 끝에 두개의 버튼을 가로정렬 시켜주는 ButtonBar
          //  만약 가로 공간이 부족하다면 세로로 배치 해줌
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(
                    onPressed: (){},
                    child: Text("TextButton"),
                ),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("ElevatedButton"),
                )
              ],
            )
          ],
        )
      )
    );
  }
}
