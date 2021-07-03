import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter入門アカデミー'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    print('TextButtonがクリックされました');
                  });
                },
                child: Text('Hello World'),
                style: TextButton.styleFrom(
                  primary: Colors.orange,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    print('ElevatedButtonがクリックされました');
                  });
                },
                child: Text('Hello World'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    print('OutlinedButtonがクリックされました');
                  });
                },
                child: Text('Hello World'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.orange,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
