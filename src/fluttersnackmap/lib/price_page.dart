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
  List<String> _questions = [];

  Future<List<String>> _loadQuestions() async {
    List<String> questions = [];
    await rootBundle.loadString('assets/PriceMap.txt').then((q) {
      for (String i in LineSplitter().convert(q)) {
        questions.add(i);
      }
    });
    return questions;
  }

  @override
  void initState() {
    _setup();
    super.initState();
  }

  _setup() async {
    // Retrieve the questions (Processed in the background)
    List<String> questions = await _loadQuestions();

    // Notify the UI and display the questions
    setState(() {
      _questions = questions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Questions")),
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: _questions.length,
            itemBuilder: (context, index) {
              return Text(_questions[index]);
            },
          ),
        ),
      ),
    );
  }
}



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






