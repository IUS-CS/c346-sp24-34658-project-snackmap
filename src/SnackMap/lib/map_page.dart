import 'package:flutter/material.dart';

class IUSMapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IUS Map'),
      ),
      body: Center(
        child: Container(
          width: double.infinity, 
          height: double.infinity, 
          padding: EdgeInsets.all(16.0), 
          child: Image.asset(
            'IUSmap.png', 
            fit: BoxFit.contain, 
          ),
        ),
      ),
    );
  }
}
