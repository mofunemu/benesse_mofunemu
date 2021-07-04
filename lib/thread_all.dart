import 'package:flutter/material.dart';
import 'package:mofunemu/main.dart';
import 'in_thread.dart';
import 'create_thread.dart';
import 'main.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name, this.category, this.theme, this.qustion);
  String name, category, theme, qustion;

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
            //floatingActionbutton:Container(margin:EdgeInsets.only(buttom:50),child
            Container(
              margin: EdgeInsets.only(bottom: 0.0),
              child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateThreadPage(this.name)));
                  },
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.add)),
            ),

            Text('ようこそ' + this.name + 'さん', style: TextStyle(fontSize: 24)),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InThreadPage(this.name,
                            this.category, this.theme, this.qustion)));
              },
              child: Text(this.category +
                  "," +
                  this.theme +
                  "," +
                  this.qustion +
                  'スレッド内へと'),
              style: TextButton.styleFrom(
                primary: Colors.orange,
                textStyle: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
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
