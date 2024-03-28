import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text("Find a snack or drink by price")),
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
              return ExpansionTile(
                title: Text(snackName),
                children: <Widget>[
                  for(int i =0; i < pricesAndLocations.length;i = i+2)
                    
                      ListTile(
                      title: Text('\$${pricesAndLocations[i]} at${pricesAndLocations[i+1]}', textAlign: TextAlign.start),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}


// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class PricePage extends StatefulWidget {
//   const PricePage({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return MyAppScreenState();
//   }
// }

// class MyAppScreenState extends State<PricePage> {
//   List<String> _priceMapList = [];

//   Future<List<String>> _loadpriceMapList() async {
//     List<String> priceMapList = [];
//     //Add each line in file to priceMapList
//     await rootBundle.loadString('assets/PriceMap.txt').then((q) {
//       for (String i in LineSplitter().convert(q)) {
//         priceMapList.add(i);
//       }
//     });
//     return priceMapList;
//   }

//   @override
//   void initState() {
//     _setup();
//     super.initState();
//   }

//   _setup() async {
//     //Retrieve the priceMapList
//     List<String> priceMapList = await _loadpriceMapList();

//     //Display the items in list
//     setState(() {
//       _priceMapList = priceMapList;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Find a snack or drink by price")),
//       body: Center(
//         child: Container(
//           child: ListView.builder(
//             itemCount: _priceMapList.length,
//             itemBuilder: (context, index) {
//               //Get the item name
//               List<String> parts = _priceMapList[index].split(':');

//               //Get name,price,and location
//               String snackName = parts[0].trim();
//               List<String> pricesAndLocations = parts[1].trim().split(',');
//               return ExpansionTile(
//                 title: Text(snackName),
//                 children: <Widget>[
                  
//                   //For each price in priceAndLocations
//                   for (String item in pricesAndLocations)
//                     ListTile(

//                       title: Text('\$$item'),
//                     ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }




// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';



// class PricePage extends StatefulWidget {
//   const PricePage({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return MyAppScreenState();
//   }
// }

// class MyAppScreenState extends State<PricePage> {
//   List<String> _priceMapList = [];

//   Future<List<String>> _loadpriceMapList() async {
//     List<String> priceMapList = [];
//     await rootBundle.loadString('assets/PriceMap.txt').then((q) {
//       for (String i in LineSplitter().convert(q)) {
//         priceMapList.add(i);
//       }
//     });
//     return priceMapList;
//   }

//   @override
//   void initState() {
//     _setup();
//     super.initState();
//   }

//   _setup() async {
//     // Retrieve the questions (Processed in the background)
//     List<String> priceMapList = await _loadpriceMapList();

//     // Notify the UI and display the questions
//     setState(() {
//       _priceMapList = priceMapList;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Find a snack or drink by price")),
//       body: Center(
//         child: Container(
//           child: ListView.builder(
//             itemCount: _priceMapList.length,
//             itemBuilder: (context, index) {
//               return Text(_priceMapList[index]);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'search_by_price.dart';
// import 'read_and_write.dart';


// class PricePage extends StatefulWidget {
//   const PricePage({Key? key}) : super(key: key);

//   @override
//   State<PricePage> createState() => _ExpandingTileState();
// }

// class _ExpandingTileState extends State<PricePage> {
//   // Generate a list of Users, You often use API or database for creation of this list   
//   // // Generate a list of Users, You often use API or database for creation of this list
//   final List<Map<String, dynamic>> _users = List.generate(
//       20,
//       (index) => {
//             "id": index,
//             "name": "User $index",
//             "detail":
//                 "User with id $index. You can write detail for expansion tile here."
//           });


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Search for a drink or snack by price.'),
//       ),
//       body: ListView.builder(
//         itemCount: _users.length,
//         itemBuilder: (_, index) {
//           final item = _users[index];
//           return Card(
//             //Remember
//             //Here key is required to save and restore ExpansionTile expanded state
//             key: PageStorageKey(item['id']),

//             child: ExpansionTile(
//               controlAffinity: ListTileControlAffinity.leading,
//               childrenPadding:
//                   const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               expandedCrossAxisAlignment: CrossAxisAlignment.end,
//               maintainState: true,
//               title: Text(item['name']),
//               // Expanded Contents
//               children: [
//                 ListTile(
//                     leading: const CircleAvatar(
//                       child: Icon(Icons.person),
//                       backgroundColor: Colors.white,
//                     ),
//                     title: Text(item['detail'])),

//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }






