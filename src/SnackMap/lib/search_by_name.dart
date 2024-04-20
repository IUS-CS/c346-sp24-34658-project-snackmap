import 'get_individual_map_data.dart';


class SearchByName {
  Map<String, String> sortByName(Map<int, Map<String, String>> allVendingMap) {
    final snackList = GetData().getSnackData(allVendingMap);
    final drinkList = GetData().getDrinkData(allVendingMap);
    final itemMap = <String, String>{};
    
    // Populate itemMap with snacks
    for (final snack in snackList) {
      final location = snackLocation(allVendingMap, snack);
      if (location != null) {
        itemMap[snack] = location;
      }
    }

    // Populate itemMap with drinks
    for (final drink in drinkList) {
      final location = snackLocation(allVendingMap, drink);
      if (location != null) {
        itemMap[drink] = location;
      }
    }

    return itemMap;
  }

  String? snackLocation(Map<int, Map<String, String>> allVendingMap, String item) {
    for (int vendingNum = 1; vendingNum < 28; vendingNum++) {
      final currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      if (currentMap != null && currentMap.containsKey(item)) {
        return currentMap.keys.first.split(', ')[0];
      }
    }
    return null;
  }
}



