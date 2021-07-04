import 'package:flutter/material.dart';
import 'thread_all.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _userController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ログイン画面',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ギフテッド向け掲示板へようこそ', style: TextStyle(fontSize: 24)),
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
                child: new TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      hintText: "Please input.",
                    ),
                    controller: _userController,
                    style: new TextStyle(
                        fontSize: 20.0, height: 2.0, color: Colors.black))),
            RaisedButton(
              child: Text('Enter'),
              onPressed: () {
// -*--*--*--*--*- Navigator -*--*--*--*--*-
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            NextPage(_userController.text, "", "", "")));
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
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ログイン画面',
        ),
      ),
      body: Center(
        
        child: RaisedButton(
          child: Text('次のページ'),
          onPressed: () {
// -*--*--*--*--*- Navigator -*--*--*--*--*-
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NextPage()));
// -*--*--*--*--*- Navigator -*--*--*--*--*-
          },
        ),
      ),
    );
  }
}
*/
