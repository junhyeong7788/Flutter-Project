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
        body: ListView(
          children: [
            Text('Hello World'),
            Text('Hello World'),
            Text('Hello World'),
            Text('Hello World'),
            Text('Hello World'),
            Text('Hello World'),
            Text('Hello World'),
            Text('Hello World'),
          ],
        )
      ),
    );
  }
}

//ListView : 스크롤바 자동생성, 스크롤 위치감시가능, 메모리절약기능

