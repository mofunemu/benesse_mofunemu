import 'package:flutter/material.dart';
import 'in_thread.dart';
import 'create_thread.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'スレッド画面',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateThreadPage()));
                },
                backgroundColor: Colors.blue,
                child: Icon(Icons.add)),
            Text('ようこそ' + this.name + 'さん', style: TextStyle(fontSize: 24)),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InThreadPage()));
              },
              child: Text('スレッド内へと'),
              style: TextButton.styleFrom(
                primary: Colors.orange,
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('ログアウト'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
