import 'package:flutter/material.dart';
import 'package:widjet/second_page.dart';

class FirstPage extends StatelessWidget{
  String nametext = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('画面遷移する人。'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text){
                  nametext = text;
                },
              ),
              ElevatedButton(
                onPressed: (){
                  //ボタンが押されたときに呼ばれるコード
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  SecondPage(nametext),
                    ),
                  );
                },
                child: const Text('次の画面へ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
