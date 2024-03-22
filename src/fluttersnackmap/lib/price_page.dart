import 'package:flutter/material.dart';
import 'search_by_price.dart';
import 'read_and_write.dart';


class PricePage extends StatefulWidget {
  const PricePage({Key? key}) : super(key: key);

  @override
  State<PricePage> createState() => _ExpandingTileState();
}

class _ExpandingTileState extends State<PricePage> {
  static Map<int,Map<String,String>> allVendingMap = readFile('assets/VendingInformation.txt');
  static Map<String, List<String>> priceMap = SearchByPrice().sortByPrice(allVendingMap);
  static int itemCount = priceMap.length;
  static List keyList = priceMap.keys.toList();
   
  // Generate a list of Users, You often use API or database for creation of this list   
  // // Generate a list of Users, You often use API or database for creation of this list
  final List<Map<String, dynamic>> _users = List.generate(
      20,
      (index) => {
            "id": index,
            "name": "User $index",
            "detail":
                "User with id $index. You can write detail for expansion tile here."
          });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search for a drink or snack by price.'),
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (_, index) {
          final item = _users[index];
          return Card(
            //Remember
            //Here key is required to save and restore ExpansionTile expanded state
            key: PageStorageKey(item['id']),

            child: ExpansionTile(
              controlAffinity: ListTileControlAffinity.leading,
              childrenPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              expandedCrossAxisAlignment: CrossAxisAlignment.end,
              maintainState: true,
              title: Text(item['name']),
              // Expanded Contents
              children: [
                ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.person),
                      backgroundColor: Colors.white,
                    ),
                    title: Text(item['detail'])),

              ],
            ),
          );
        },
      ),
    );
  }
}






