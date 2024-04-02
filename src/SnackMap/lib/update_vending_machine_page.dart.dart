import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'options_drawer.dart';

class UpdateVendingPage extends StatefulWidget {
  const UpdateVendingPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return UpdateVendingPageState();
  }
}

class UpdateVendingPageState extends State<UpdateVendingPage> {


  @override

  Widget build(BuildContext context) {

    return Scaffold(
      //Add drawer
      drawer: const OptionsDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('Update a Vending Machine'),
        ),
        //Select vending machine with drop down
        // If snack add snacks with yes or no drop
        //remove snack with yes or no drop if add is no
        //search through list of item and checkbox which to add or remove
      ),
    );
  }
  

}