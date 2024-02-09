import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Kindacode.com')),
        body: Center(child: GenderSelector()),
      ),
    );
  }
}

class GenderSelector extends StatefulWidget {
  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? _gender;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Пожалуйста, сообщите нам ваш пол:', style: TextStyle(fontSize: 18)),
        ListTile(
          title: const Text('Мужской'),
          leading: Radio<String>(
            value: 'Мужской',
            groupValue:_gender,
            onChanged:(value){
              setState(() { 
                _gender = value; 
              });
            },
          ),
        ),
        ListTile(
          title : const Text('Женский'),
          leading : Radio<String>(
            value:'Женский',
            groupValue:_gender,
            onChanged:(value){
              setState(() { 
                _gender = value; 
              });
            },
          ),
        ),
        if (_gender != null)
          Padding(
            padding : const EdgeInsets.all(8.0),
             child : Text(_gender == 'Мужской' ? 'Привет, джентльмен!' : 'Привет, леди!', style : TextStyle(fontSize :18)),
           )
       ],
     );
   }
}