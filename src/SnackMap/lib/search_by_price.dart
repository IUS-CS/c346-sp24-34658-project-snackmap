import 'package:SnackMap/read_and_write.dart';
import 'get_individual_map_data.dart';

class SearchByPrice {
  Map<String, List<String>> sortByPrice(Map<int, Map<String, String>> allVendingMap) {
    List<String> snackList = GetData().getSnackData(allVendingMap);
    List<String> drinkList = GetData().getDrinkData(allVendingMap);
    Map<String, List<String>> itemMap = {};

    // Initialize itemMap with empty lists for each item
    //Add the keys to itemMap for snackList
    for (int index = 0; index < snackList.length; index++) {
      itemMap[snackList[index]] = [];
    }

    //Do the same for drinkList
    for (int index = 0; index < drinkList.length; index++) {
      itemMap[drinkList[index]] = [];
    }

    // Iterate through vending machines
    for (int vendingNum = 1; vendingNum < 28; vendingNum++) {
      Map<String, String>? currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      if (currentMap != null) {
        currentMap.forEach((key, value) {
          // Check if item is in itemMap
          if (itemMap.containsKey(key)) {
            double currentValue = double.parse(value);
            String currentLocation = currentMap.keys.first;
            List<String> currentList = itemMap[key]!;

            // Add the current location and value to the list
            currentList.add("$currentLocation: $value");
          }
        });
      }
    }

    // Sort itemMap by the lowest value price for each item
    itemMap.forEach((key, value) {
      value.sort((a, b) => double.parse(a.split(": ")[1]).compareTo(double.parse(b.split(": ")[1])));
    });

    writePriceMap(itemMap);
    return itemMap;
  }
}
