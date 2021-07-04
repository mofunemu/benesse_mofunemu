import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mofunemu/thread_all.dart';
import 'in_thread.dart';

class CreateThreadPage extends StatelessWidget {
  CreateThreadPage(this.name);
  String name;
  @override
  var _categoryController = TextEditingController();
  var _questionController = TextEditingController();
  var _themeController = TextEditingController();
  void add_data(var x, var y, var z) {
    var theme = "数学";
    Firestore.instance
        .collection(theme)
        .add({"theme": _questionController, "honbun": _themeController});
  }

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
                final date = DateTime.now().toLocal().toIso8601String(); // 現在の日
                // 投稿メッセージ用ドキュメント作成
                Firestore.instance
                    .collection('数学') // コレクションID指定
                    .document() // ドキュメントID自動生成
                    .setData({
                  'text': _questionController,
                  'theme': _themeController,
                  'date': date
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NextPage(
                            this.name,
                            _categoryController.text,
                            _themeController.text,
                            _questionController.text)));
// -*--*--*--*--*- Navigator -*--*--*--*--*-
                //Navigator.pop(context);
                // add_data("あ", "い", "う");
// -*--*--*--*--*- Navigator -*--*--*--*--*-
              },
            ),
            RaisedButton(
              child: Text('スレッド一覧へ戻る'),
              onPressed: () {
// -*--*--*--*--*- Navigator -*--*--*--*--*-
                Navigator.pop(context);
                final date = DateTime.now().toLocal().toIso8601String(); // 現在の日
                // 投稿メッセージ用ドキュメント作成
                Firestore.instance
                    .collection('数学') // コレクションID指定
                    .document() // ドキュメントID自動生成
                    .setData({
                  'text': _questionController,
                  'theme': _themeController,
                  'date': date
                });
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
