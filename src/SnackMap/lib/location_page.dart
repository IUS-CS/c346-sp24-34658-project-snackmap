import 'package:flutter/material.dart';
import 'options_drawer.dart';
import 'vending_machine_data_sheet_api.dart';
import 'search_by_location.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LocationPageState();
  }
}

class LocationPageState extends State<LocationPage> {
  late Map<String, List<String>> locationMap;
  final List<Color> backgroundColors = [
    const Color(0xff64C19D),
    const Color(0xffFFFBFE),
    const Color(0xffBDBEC0),
  ];

  @override
  void initState() {
    super.initState();
    setup();
  }

  setup() async {
    // Get the locationMap
    Map<String, List<String>> sortedLocationMap = SearchByLocation().sortByLocation(allVendingMap);

    // Update the state with the sorted locationMap
    setState(() {
      locationMap = sortedLocationMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> sortedLocations = locationMap.keys.toList()..sort();

    return Scaffold(
      // Add drawer
      drawer: const OptionsDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('Search For Snack or Drink By Location'),
        ),
      ),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: sortedLocations.length,
            itemBuilder: (context, index) {
              String location = sortedLocations[index];
              List<String> itemsAndPrices = locationMap[location]!;
              Color backgroundColor = backgroundColors[index % backgroundColors.length];

              return Container(
                color: backgroundColor,
                child: ExpansionTile(
                  title: Text(location),
                  children: <Widget>[
                    for (String itemAndPrice in itemsAndPrices)
                      ListTile(
                        title: Text(itemAndPrice),
                        tileColor: backgroundColor, // Set background color for ListTile
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
