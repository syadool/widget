import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  const SecondPage(this.nametext);
  final String nametext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('2番目'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nametext,
              style: const TextStyle(
                fontSize: 50
              ),
            ),
            ElevatedButton(
              onPressed: (){
                //ボタンが押されたときに呼ばれるコード
                Navigator.pop(context);
              },
              child: const Text('前の画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
