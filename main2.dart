import 'package:flutter/material.dart';

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

class MyHomePage extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
  return Center(
    child: Container(
      width: 300,
      height: 200,
      padding: new EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.red,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album, size: 60),
              title: Text(
                'Sonu Nigam',
                style: TextStyle(fontSize: 30.0),
              ),
              subtitle: Text(
                'Best of Sonu Nigam Music',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}

