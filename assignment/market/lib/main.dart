import 'package:flutter/material.dart';

void main() {
  runApp(const Assignment2());
}

var title = AppBar(title: Text('Assignment 1'));
var bottom = BottomAppBar(
  height: 50, //하단앱바 높이조절
  child: Row( //가로, column: 세로
    mainAxisAlignment: MainAxisAlignment.spaceEvenly, //아이콘가로정렬
    children: const [
      Icon(Icons.phone),
      Icon(Icons.message),
      Icon(Icons.contact_page),
    ],
  ),
);


class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {

  var a = 1;
  var name = ['김영숙', '홍길동', '피자집'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Text('Add'),
            onPressed: (){},
          ),
          appBar: title,
          body: ListView.builder(
            itemCount: 3,
            itemBuilder: (c, i){
              return ListTile(
                leading: Image.asset('profile.png'),
                title: Text(name[i]),
              );
            },
          ),
          bottomNavigationBar: bottom,
        ),
    );
  }
}
