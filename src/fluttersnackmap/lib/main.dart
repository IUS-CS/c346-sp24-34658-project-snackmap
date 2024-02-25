import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';

 

//Start of app
void main() {
  runApp(MyApp());
}




//Adding a flat button
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlatButton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  String txt='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Sets up the app bar
      appBar: AppBar(
        title: Text('SnackMap'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(

              //Flat button1 and what it does when pressed
              child: Text('Flat Button1',),
              onPressed: () {
                setState(() {
                  txt='FlatButton tapped1';
                });
              },
            ),
           
           //Used for space between buttons
            SizedBox(
                //Use of SizedBox
                height: 30,
            ),
              
            ElevatedButton(

              //Flat button2 and what it does when pressed
              child: Text('Flat Button2',),
              onPressed: () {
                setState(() {
                  txt='FlatButton tapped2';
                });
              },
            ),

            //Used for space between buttons
            SizedBox(
                //Use of SizedBox
                height: 30,
            ),
            
            ElevatedButton(

              //Flat button3 and what it does when pressed
              child: Text('Flat Button3',),
              onPressed: () {
                setState(() {
                  txt='FlatButton tapped3';
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}