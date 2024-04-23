import 'get_individual_map_data.dart';

class SearchByLocation {
  Map<String, List<String>> sortByLocation(Map<int, Map<String, dynamic>> allVendingMap) {
    List<String> snackList = GetData().getSnackData(allVendingMap);
    List<String> drinkList = GetData().getDrinkData(allVendingMap);
    Map<String, List<String>> locationMap = {};

    // Add locations to locationMap
    for (int vendingNum = 1; vendingNum < 28; vendingNum++) {
      Map<String, dynamic>? currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      if (currentMap != null) {
        String location = currentMap.keys.first;
        locationMap[location] = [];
      }
    }

    // Add items and prices under each location
    for (int vendingNum = 1; vendingNum < 28; vendingNum++) {
      Map<String, dynamic>? currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      if (currentMap != null) {
        String location = currentMap.keys.first;
        currentMap.forEach((key, value) {
          if (snackList.contains(key) || drinkList.contains(key)) {
            String price = value.toString();
            locationMap[location]!.add('$key : \$$price');
          }
        });
      }
    }

    // Sort items and prices under each location
    locationMap.forEach((key, value) {
      value.sort((a, b) {
        double priceA = double.parse(a.split(' : \$')[1]);
        double priceB = double.parse(b.split(' : \$')[1]);
        return priceA.compareTo(priceB);
      });
    });

    // Sort locations alphabetically
    var sortedKeys = locationMap.keys.toList()..sort();
    var sortedLocationMap = Map.fromEntries(sortedKeys.map((key) => MapEntry(key, locationMap[key]!)));

    return sortedLocationMap;
  }
}
