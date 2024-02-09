import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(ProgressBarApp());
}

class ProgressBarApp extends StatefulWidget {
  @override
  ProgressBarAppState createState() => ProgressBarAppState();
}

class ProgressBarAppState extends State<ProgressBarApp> {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _progress += 0.01;
        if (_progress >= 1.0) {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Progress Bar"),
        ),
        body: Center(
          child: Container(
            width: 200,
            child: LinearProgressIndicator(
              value: _progress,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}

