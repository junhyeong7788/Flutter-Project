import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HelloWorld!'),)
    );
  }
}
