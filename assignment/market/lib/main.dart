import 'package:flutter/material.dart';

void main() {
  runApp(const Assignment1());
}
class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Assignment 1')),
          bottomNavigationBar: BottomAppBar(
            height: 50, //하단앱바 높이조절
            child: Row( //가로, column: 세로
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //아이콘가로정렬
              children: const [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
              ),
          ),
        ),
    );
  }
}
