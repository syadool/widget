import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  String nametext = '';

  FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['うんこ系YouTuber、ヒカキン', 'あんこ型YouTuber、デカキン', '擬音系YouTuber、セイキン'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('なっつー'),
        backgroundColor: Colors.black87,
        actions: [
          Icon(Icons.cast),
          SizedBox(width: 24,),
          Icon(Icons.search),
          SizedBox(width: 24,),
          Icon(Icons.menu),
          SizedBox(width: 24,),
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network('https://i.ytimg.com/vi/QdcMb97UthI/maxresdefault.jpg',
                    height: 100,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: TextStyle(
                            color: Colors.white,
                              fontSize: 17
                            ),
                          ),
                          Text(
                            '10回・５分前',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.5
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
        )
      )
    );
  }
}
