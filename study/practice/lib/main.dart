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
        body: ShopItem() //커스텀위젯 사용
      ),
    );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({super.key}); //class : 변수, 함수 보관함

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('Hello World!'),
    );
  }
}

