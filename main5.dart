import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kindacode.com'),
        ),
        body: Container(
          padding: EdgeInsets.all(22.0),
          child: Column(
            children: [
              SizedBox(width: 10,),
              Text('Choose your hobbies',
                style: TextStyle(fontSize: 20.0),
              ),
              CheckboxListTile(
                title: const Text('Football'),
                value: this.valuefirst,
                onChanged: (bool? value) {
                  if (value != null) {
                    setState(() {
                      this.valuefirst = value;
                    });
                    
                  }
                },
              ),
              CheckboxListTile(
                title: const Text('Baseball'),
                value: this.valuefirst,
                onChanged: (bool? value) {
                  if (value != null) {
                    setState(() {
                      this.valuefirst = value;
                    });
                    
                  }
                },
              ),
              CheckboxListTile(
                title: const Text('Video Games'),
                value: this.valuefirst,
                onChanged: (bool? value) {
                  if (value != null) {
                    setState(() {
                      this.valuefirst = value;
                    });
                    
                  }
                },
              ),
              CheckboxListTile(
                title: const Text('Readding Books'),
                value: this.valuefirst,
                onChanged: (bool? value) {
                  if (value != null) {
                    setState(() {
                      this.valuefirst = value;
                    });
                    
                  }
                },
              ),
              CheckboxListTile(
                title: const Text('Surfling The Internet'),
                value: this.valuefirst,
                onChanged: (bool? value) {
                  if (value != null) {
                    setState(() {
                      this.valuefirst = value;
                    });
                    
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyHomePage());
}