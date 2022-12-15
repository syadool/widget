import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2番目'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //ボタンが押されたときに呼ばれるコード

          },
          child: const Text('前の画面へ'),
        ),
      ),
    );
  }
}
