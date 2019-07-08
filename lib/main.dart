import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Center(
          child: Text('Ask me anything', style: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
          ),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: MagicPage(),
    ),
  ));
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballNumber = 1 ;

  void nextInt() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print(ballNumber);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: FlatButton(
        onPressed: () {
          print('button click');
          nextInt();
        },
        
        child: Center(child: Image(image: AssetImage('images/ball$ballNumber.png'),
        )
        ),
      ),

    );
  }
}

