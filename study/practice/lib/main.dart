import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //앱 시작 코드
}

//변하지 않는 UI들은 변수, 함수로 축약해도 상관없음
var a = SizedBox( //변수로 커스텀위젯 사용
  child: Text('Hello World!'),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //stless 명령어 : 메인 페이지 셋팅

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: a, //커스텀위젯 사용
      ),
    );
  }
}


