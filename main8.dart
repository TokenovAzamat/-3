import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(ProgressLoaderApp());
}

class ProgressLoaderApp extends StatefulWidget {
  @override
  ProgressLoaderAppState createState() => ProgressLoaderAppState();
}

class ProgressLoaderAppState extends State<ProgressLoaderApp> {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        _progress += 0.01;
        if (_progress >= 1.0) {
          timer.cancel();
          // perform some action after loading is complete
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Progress Loader"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: LinearProgressIndicator(
                  value: _progress,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                child: CircularProgressIndicator(
                  value: _progress,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}