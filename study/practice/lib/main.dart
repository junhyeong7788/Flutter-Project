import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //앱 시작 코드
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //stless 명령어 : 메인 페이지 셋팅

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            Flexible(child: Container(color: Colors.blue), flex: 3),
            Flexible(child: Container(color: Colors.green), flex: 7),
          ], //Flexible : row랑 column 안에 비율로 나누는 레이아웃
        )
      ),
    );
  }
}

