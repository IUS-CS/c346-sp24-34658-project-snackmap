import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'options_drawer.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key});

  @override
  State<StatefulWidget> createState() {
    return LocationPageState();
  }
}

class LocationPageState extends State<LocationPage> {
  List<String> locationList = [];

  Future<List<String>> loadLocationList() async {
    List<String> locationList = [];
    //Add each line in file to locationList
    await rootBundle.loadString('assets/LocationMap.txt').then((q) {
      for (String i in LineSplitter().convert(q)) {
        locationList.add(i);
      }
    });
    return locationList;
  }

  @override
  void initState() {
    setup();
    super.initState();
  }

  setup() async {
    List<String> locationList = await loadLocationList();

    //Display the locations in list
    setState(() {
      locationList = locationList;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Used to cycle through background colors
    int colorIndex = 0;

    return Scaffold(
      //Add drawer
      drawer: const OptionsDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('Locations of Vending Machines'),
        ),
      ),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: locationList.length,
            itemBuilder: (context, index) {
              //Get the location name and details
              List<String> parts = locationList[index].split(':');
              //Get location and status
              String locationName = parts[0].trim();
              String status = parts[1].trim();

              //Background colors
              List<Color> backgroundColors = [
                const Color(0xff64C19D),
                const Color(0xffFFFBFE),
                const Color(0xffBDBEC0),
              ];

              //Cycle through colors
              Color backgroundColor = backgroundColors[colorIndex];
              colorIndex = (colorIndex + 1) % backgroundColors.length;

              return Container(
                color: backgroundColor,
                child: ListTile(
                  //Output location and status
                  title: Text('$locationName - Status: $status', textAlign: TextAlign.start),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
