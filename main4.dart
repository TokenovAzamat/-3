import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Example'),
        ),
        body: ListView(
          children: <Widget>[
            CustomListTile(
              icon: Icons.map,
              title: 'Map',
            ),
            CustomListTile(
              icon: Icons.photo_album,
              title: 'Album',
            ),
            CustomListTile(
              icon: Icons.phone,
              title: 'Phone',
            ),
            CustomListTile(
              icon: Icons.contacts,
              title: 'Contact',
            ),
            CustomListTile(
              icon: Icons.settings,
              title: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;

  CustomListTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
    );
  }
}