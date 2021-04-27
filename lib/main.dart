import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int ballNum = 1;

  void shakeBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            toolbarHeight: 80.0,
            backgroundColor: Colors.blue[700],
            title: Center(
              child: Text(
                'ASK ME ANYTHING...',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: Center(
            child: TextButton(
              onPressed: shakeBall,
              child: Image(
                image: AssetImage('images/ball$ballNum.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
