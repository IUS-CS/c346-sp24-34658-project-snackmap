import 'package:SnackMap/search_by_price.dart';
import 'package:flutter/material.dart';
import 'options_drawer.dart';
import 'vending_machine_data_sheet_api.dart';

class PricePage extends StatefulWidget {
  const PricePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppScreenState();
  }
}

class MyAppScreenState extends State<PricePage> {


  List<String> priceMapList = [];

  List<String> loadpriceMapList() {
    Map<String,List<String>> priceMap = SearchByPrice().sortByPrice(allVendingMap);
    priceMap.forEach((key, value) {
      String itemAndLocation = '$key : ';
      String splitValue = value.join(', ');
      itemAndLocation += splitValue;
      priceMapList.add(itemAndLocation);
    });
    return priceMapList;
  }

  @override
  void initState() {
    setup();
    super.initState();
  }

setup() async {
  //Get the priceMapList
  List<String> loadedPriceMapList = loadpriceMapList();

  //Update the state with the loaded list
  setState(() {
    priceMapList = loadedPriceMapList;
  });
}

  @override
  Widget build(BuildContext context) {
    //Used to cycle though background colors
    int colorIndex = 0;

    return Scaffold(
      //Add drawer
      drawer: const OptionsDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('Search For Snack or Drink By Lowest Price'),
        ),
        
      ),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: priceMapList.length,
            itemBuilder: (context, index) {
              //Get the item name
              List<String> parts = priceMapList[index].split(':');
              //Get name,price, and location
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

              //Cycle through colors
              Color backgroundColor = backgroundColors[colorIndex];
              colorIndex = (colorIndex + 1) % backgroundColors.length; 

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
