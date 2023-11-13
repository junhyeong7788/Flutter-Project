import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //앱 시작 코드
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['박준형', '박형준'];
//변수와 state는 플러터에서 데이터를 잠깐 저장하는 곳

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()), //앱에 기능 추가
          onPressed: (){
            setState(() { //setState로 변수를 업데이트
              a++;
            });
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (c, i){
            return ListTile(
              title: Text(name[i]),
            );
          },
        )
      ),
    );
  }
}

//ListView.bilder() : 자동으로 반복해주는 함수
//itemBuilder(context, index) : 각각의 아이템을 표현하는 함수

