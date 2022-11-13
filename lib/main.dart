// 코딩셰프에서 DartPad에서 진행하므로, 여기에서도 그냥 DartPad처럼 진행할 것임.


// String Interpolation
import 'package:flutter/cupertino.dart';

void main(){
  String name = "Sean";
  print(name);

  // 변수 name 불러오기 : $name
  print("Hi, $name, what's up?");
}

//Collection, Generic
//Collection : 데이터들을 모아서 가지고 있는 자료구조
//Generic : Collection이 가지고 있는 데이터들의 데이터 타입을 지정해서 코드의 안정성/재사용성을 높이는 기법.

void collection(){
  // list 만드는 법
  // 변수 선언은 List로 하면 list로 고정, var로 하면 자동으로 list로 맞춰줌
  //1. growable(동적 배열)
  List number1 = new List.empty(growable: true);
  //2. fixed length(정적 배열)
  var number2 = [];

  // <> : generic -> list안에 들어가는 타입을 지정해줌
  List<String> number3 = new List.empty(growable: true);
}

