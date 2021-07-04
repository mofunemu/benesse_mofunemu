import 'package:flutter/material.dart';

class CreateThreadPage extends StatelessWidget {
  @override
  var _categoryController = TextEditingController();
  var _questionController = TextEditingController();
  var _themeController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '新規スレッド作成',
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Container(
                width: 200.0,
                height: 60.0,
                child: new TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Category",
                      hintText: "Please input Category.",
                    ),
                    controller: _categoryController,
                    style: new TextStyle(
                        fontSize: 15.0, height: 2.0, color: Colors.black))),
            new Container(
                width: 200.0,
                height: 60.0,
                child: new TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Theme",
                      hintText: "Please input theme.",
                    ),
                    controller: _themeController,
                    style: new TextStyle(
                        fontSize: 15.0, height: 2.0, color: Colors.black))),
            new Container(
                width: 200.0,
                child: new TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "本文",
                      hintText: "Please input question.",
                    ),
                    controller: _questionController,
                    style: new TextStyle(
                        fontSize: 15.0, height: 2.0, color: Colors.black))),
            RaisedButton(
              child: Text('投稿'),
              onPressed: () {
// -*--*--*--*--*- Navigator -*--*--*--*--*-
                Navigator.pop(context);
// -*--*--*--*--*- Navigator -*--*--*--*--*-
              },
            ),
            RaisedButton(
              child: Text('スレッド一覧へ戻る'),
              onPressed: () {
// -*--*--*--*--*- Navigator -*--*--*--*--*-
                Navigator.pop(context);
// -*--*--*--*--*- Navigator -*--*--*--*--*-
              },
            ),
          ],
        ),
      ),
    );
  }
}




/*
class CreateThreadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '新規スレッド作成',
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('スレッド一覧へ戻る'),
          onPressed: () {
// -*--*--*--*--*- Navigator -*--*--*--*--*-
            Navigator.pop(context);
// -*--*--*--*--*- Navigator -*--*--*--*--*-
          },
        ),
      ),
    );
  }
}
*/
