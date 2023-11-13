import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(  //플로팅버튼을 눌렀을때 다이얼로그가 안뜨는 이유, MaterialApp을 따로 빼주지 않았다.
      home: Assignment2()
    )
  );
}

var title = AppBar(title: Text('Assignment 1')); //title이름 : 거의 변하지 않아서 state변수로 지정
var bottom = BottomAppBar( //바텀바 아이콘UI
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


class Assignment2 extends StatefulWidget { //stateful widget = stful
  const Assignment2({super.key});
  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {

  var a = 1; //state 변수
  var name = ['김영숙', '홍길동', '피자집'];

  @override
  Widget build(context) {
    return Scaffold(
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
          floatingActionButton: FloatingActionButton( //오른쪽 하단 플로팅액션버튼
            onPressed: (){
              showDialog(context: context, builder: (context){
                return DialogUI();
              });
            },
          ),
    );
  }
}

class DialogUI extends StatelessWidget { //dialog UI 커스텀 위젯
  DialogUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column( //세로배치
          children: [
            TextField(),
            TextButton( child: Text('완료'), onPressed:(){} ),
            TextButton(
                child: Text('취소'),
                onPressed:(){ Navigator.pop(context); }) //Navigatior.pop(context) : 버튼을 누르면 창닫기
          ],
        ),
      ),
    );
  }
}
