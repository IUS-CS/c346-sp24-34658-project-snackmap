import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

 

//Start of app
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackMap',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text('SnackMap'),
          ),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}