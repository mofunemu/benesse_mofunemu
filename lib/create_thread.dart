import 'package:flutter/material.dart';

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
