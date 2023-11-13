import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp( //밖으로 빼줌
        home: MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['박준형', '박형준'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()), //앱에 기능 추가
          onPressed: (){
            showDialog(context: context, builder: (context){
              return Dialog(child: Text('Hello'));
            });
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (c, i){
            return ListTile(
              leading: Image.asset('profile.png'),
              title: Text(name[i]),
            );
          },
        )
      );
  }
}

//ListView.bilder() : 자동으로 반복해주는 함수
//itemBuilder(context, index) : 각각의 아이템을 표현하는 함수
//context : 부모위젯의 정보를 담고 있는 변수일뿐
