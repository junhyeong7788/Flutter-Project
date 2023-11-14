import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp( //밖으로 빼줌
        home: MyApp()
      )
  );
}

var titleUI = AppBar(title: Text("contact"));
var bottomUI = BottomAppBar(
  height: 50,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.phone),
        Icon(Icons.message),
        Icon(Icons.contact_page),
      ],
    ),
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var a = 3;
  var name = ['치킨집', '피자집', '샤브집'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleUI,
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (c, i){
          return ListTile(
            leading: Image.asset('profile.png'),
            title: Text(name[i]),
          );
        }
      ),
        bottomNavigationBar: bottomUI,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return DialogUI(state : a); // (작명 : 변수명)/ 전송
          });
        },
      )
    );
  }
}

class DialogUI extends StatefulWidget {
  const DialogUI({Key? key, this.state}) : super(key: key);
  final state; //등록

  @override
  State<DialogUI> createState() => _DialogUIState();
}

class _DialogUIState extends State<DialogUI> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(),
            TextButton(child: Text('완료'), onPressed: (){} ), //state 변수 입력이 안됨
            TextButton(
              child: Text("취소"),
              onPressed: (){Navigator.pop(context);}
            )
          ],
        )
      )
    );
  }
}
