import 'get_individual_map_data.dart';

class SearchByPrice {
  Map<String, List<String>> sortByPrice(Map<int, Map<String, String>> allVendingMap) {
    List<String> snackList = GetData().getSnackData(allVendingMap);
    List<String> drinkList = GetData().getDrinkData(allVendingMap);
    Map<String, List<String>> itemMap = {};
    int keyTracker = 0;

    //Add the keys to itemMap for snackList
    for (int index = 0; index < snackList.length; index++) {
      itemMap[snackList[index]] = [];
    }

    //Do the same for drinkList
    for (int index = 0; index < drinkList.length; index++) {
      itemMap[drinkList[index]] = [];
    }

    // For each vending machine
    for (int vendingNum = 1; vendingNum < 28; vendingNum++) {
      Map<String, String>? currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      if (currentMap != null) {
        currentMap.forEach((key, value) {
          //Skips the location and payment
          if (keyTracker > 2) {
            // If the key is in the map
            if (itemMap.containsKey(key)) {
              //Add price and location to list
              if (itemMap[key]!.isEmpty ||
                //If value is greater than or equal to the lowest price add to end of list
                  double.parse(itemMap[key]![0]) <= double.parse(value)) {
                itemMap[key]!.add(value);
                itemMap[key]!.add(currentMap.keys.first);
                //If value is less than then add to front of list
              } else if (double.parse(itemMap[key]![0]) > double.parse(value)) {
                itemMap[key]!.insert(0, value);
                itemMap[key]!.insert(1, currentMap.keys.first);
              }
            }
          }
          keyTracker++;
        });
      }
    }

    //Sort itemMap by the lowest value price
    final priceMap = Map.fromEntries(itemMap.entries.toList()
      ..sort((e1, e2) => double.parse(e1.value[0]).compareTo(double.parse(e2.value[0]))));

    return priceMap;
  }
}
