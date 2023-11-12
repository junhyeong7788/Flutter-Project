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
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
          ),
        ),
    );
  }
}
