import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
return MaterialApp(
 home: DefaultTabController(
 length: 4,
child: Scaffold(
 appBar: AppBar(
 title: Text('Flutter TabBar Example'),
 bottom: TabBar(
 tabs: [
 Tab(icon: Icon(Icons.directions_bus), text: 'Transit'),
 Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
 Tab(icon: Icon(Icons.directions_boat), text: 'Boat'),
 Tab(icon: Icon(Icons.train), text: 'Railway'),
 ],
 ),
 ),
 body:
 // Вы можете добавить контент для каждой вкладки здесь
 // Для простоты мы просто добавляем контейнер-заглушку
 Container(),
 ),
 ),
 );
 }
}