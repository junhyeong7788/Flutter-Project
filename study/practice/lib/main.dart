import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp( //밖으로 빼줌
        home: MyApp()
      )
  );
}

//var titleUI = AppBar(title: Text("contact"));
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

  var total = 3;
  var name = ['치킨집', '피자집', '샤브집'];

  addOne(){ //state변수 함수 선언
    setState(() {
      total++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(total.toString()), ),
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
            return DialogUI( addOne : addOne ); // (작명 : 변수명)/ 전송
          });
        },
      )
    );
  }
}

class DialogUI extends StatelessWidget { //stful이 아니라 stless를 써야함, 같은 클래스 안에 있어야지 변수 입력가능
  const DialogUI({Key? key, this.addOne}) : super(key: key); //함수등록
  final addOne; //변수등록

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(),
            TextButton(child: Text('완료'), onPressed: (){ addOne();} ), //같은 클래스 안에 있어야함
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
