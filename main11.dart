import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Table Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Table Example'),
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          columnWidths: {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(2),
          },
          children: [
            TableRow(
              children: [
                Text('Website'),
                Text('Tutorial'),
                Text('Review'),
              ],
            ),
            // Add more rows here to display data
            TableRow(
              children: [
                Text('Javapoint'),
                Text('Flutter'),
                Text('5*'),
              ],
            ),
            TableRow(
              children: [
                Text('Javapoint'),
                Text('MySQL'),
                Text('5*'),
              ],
            ),
            TableRow(
              children: [
                Text('Javapoint'),
                Text('ReactUS'),
                Text('5*'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}