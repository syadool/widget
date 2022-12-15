import 'package:flutter/material.dart';
import 'package:widjet/second_page.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('画面遷移する人。'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //ボタンが押されたときに呼ばれるコード
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SecondPage()),
            );
          },
          child: const Text('次の画面へ'),
        ),
      ),
    );
  }
}
