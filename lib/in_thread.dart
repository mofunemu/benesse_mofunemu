import 'package:flutter/material.dart';

class InThreadPage extends StatelessWidget {
  InThreadPage(this.name, this.category, this.theme, this.qustion);
  String name, category, theme, qustion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'スレッド内情報',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('user:' + this.name, style: TextStyle(fontSize: 24)),
            Text('category:' + this.category, style: TextStyle(fontSize: 24)),
            Text('theme:' + this.theme, style: TextStyle(fontSize: 24)),
            Text('question:' + this.qustion, style: TextStyle(fontSize: 24)),
            /*Text('ようこそ！！', style: TextStyle(fontSize: 36)),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "テキストボックス",
                hintText: "名前を入力しよう",
              ),
            ),
            */
            new Container(
                width: 200.0,
                height: 60.0,
                child: new TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "username",
                      hintText: "Please input name.",
                    ),
                    style: new TextStyle(
                        fontSize: 15.0, height: 2.0, color: Colors.black))),
            new Container(
                width: 200.0,
                height: 60.0,
                child: new TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "reply",
                      hintText: "Please input reply.",
                    ),
                    style: new TextStyle(
                        fontSize: 15.0, height: 2.0, color: Colors.black))),
            RaisedButton(
              child: Text('投稿'),
              onPressed: () {
// -*--*--*--*--*- Navigator -*--*--*--*--*
// -*--*--*--*--*- Navigator -*--*--*--*--*-
              },
            ),
            RaisedButton(
              child: Text('スレッド一覧に戻る'),
              onPressed: () {
// -*--*--*--*--*- Navigator -*--*--*--*--*-
                Navigator.pop(context);
// -*--*--*--*--*- Navigator -*--*--*--*--*-
              },
            ),
          ],
        ),
      ),
      /*
      body: Center(
        child: RaisedButton(
          child: Text('スレッド一覧に戻る'),
          onPressed: () {
// -*--*--*--*--*- Navigator -*--*--*--*--*-
            Navigator.pop(context);
// -*--*--*--*--*- Navigator -*--*--*--*--*-
          },
        ),
      ),*/
    );
  }
}
