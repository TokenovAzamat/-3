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
 return Scaffold(
 appBar: AppBar(
 title: Text('Election 2020'),
 ),
 body: Center(
 child: ElevatedButton(
 onPressed: () {
 showMyAlertDialog(context);
 },
 child: Text('Show AlertDialog'),
 ),
 ),
 );
 }
}

showMyAlertDialog(BuildContext context) {
// Create AlertDialog
AlertDialog dialog = AlertDialog(
  title: Text("Election 2020"),
 content: Text("Will you vote for Trump?"),
 actions: [
 ElevatedButton(
 child: Text("Yes"),
 onPressed: () {
 Navigator.of(context).pop("Yes, Of course!"); // Return value
 },
 ),
 ElevatedButton(
 child: Text("No"),
 onPressed: () {
 Navigator.of(context).pop("No, I will vote for Biden!"); // Return value
 },
),
 ],
 );

 showDialog(
 context: context,
 builder: (BuildContext context) {
 return dialog;
 },
 );
}