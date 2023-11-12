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
        appBar: AppBar( title: const Text('Hello World')), //상단에 넣을 위젯
        body: SizedBox(
          child: Text('Hello World!',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}

