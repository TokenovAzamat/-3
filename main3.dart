import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('меню-твистер'),
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Имя Фамилия'),
                    Text('home@dartflutter'),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('О себе'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Настройки'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}