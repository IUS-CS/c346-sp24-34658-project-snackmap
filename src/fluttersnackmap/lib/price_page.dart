import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class PricePage extends StatefulWidget {
  const PricePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppScreenState();
  }
}

class MyAppScreenState extends State<PricePage> {
  List<String> _priceMapList = [];

  Future<List<String>> _loadpriceMapList() async {
    List<String> priceMapList = [];
    //Add each line in file to priceMapList
    await rootBundle.loadString('assets/PriceMap.txt').then((q) {
      for (String i in LineSplitter().convert(q)) {
        priceMapList.add(i);
      }
    });
    return priceMapList;
  }

  @override
  void initState() {
    _setup();
    super.initState();
  }

  _setup() async {
    //Retrieve the priceMapList
    List<String> priceMapList = await _loadpriceMapList();

    //Display the items in list
    setState(() {
      _priceMapList = priceMapList;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _colorIndex = 0; // Index to cycle through background colors

    return Scaffold(
      //Add drawer from main.dart
      drawer: const SearchDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('Search For Snack or Drink By Lowest Price'),
        ),
      ),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: _priceMapList.length,
            itemBuilder: (context, index) {
              //Get the item name
              List<String> parts = _priceMapList[index].split(':');
              //Get name,price,and location
              String snackName = parts[0].trim();
              List<String> pricesAndLocations = parts[1].trim().split(',');
              //Remove white space
              for(int i =0; i < pricesAndLocations.length;i++){
                pricesAndLocations[i] = pricesAndLocations[i].trim();
              };

              //Background colors
              List<Color> backgroundColors = [
                const Color(0xff64C19D),
                const Color(0xffFFFBFE),
                const Color(0xffBDBEC0),
              ];

              //Cycles through the background colors
              Color backgroundColor = backgroundColors[_colorIndex];
              _colorIndex = (_colorIndex + 1) % backgroundColors.length; 

              return Container(
                color: backgroundColor,
                child: ExpansionTile(
                  title: Text(snackName),
                  children: <Widget>[
                    for(int i =0; i < pricesAndLocations.length;i = i+2)
                      ListTile(
                        //Output $price at location
                        title: Text('\$${pricesAndLocations[i]} at ${pricesAndLocations[i+1]}', textAlign: TextAlign.start),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
