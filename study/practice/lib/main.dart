import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //앱 시작 코드
}

class MyApp extends StatelessWidget {
  MyApp({super.key}); //stless 명령어 : 메인 페이지 셋팅

  var a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text('Add'),
          onPressed: (){
            print(a);
            a++;
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (c, i){
            return Text('Hello');
          },
        )
      ),
    );
  }
}

//ListView.bilder() : 자동으로 반복해주는 함수
//itemBuilder(context, index) : 각각의 아이템을 표현하는 함수

