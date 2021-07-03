import 'package:flutter/material.dart';

class InThreadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'スレッド内情報',
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('スレッド一覧に戻る'),
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
