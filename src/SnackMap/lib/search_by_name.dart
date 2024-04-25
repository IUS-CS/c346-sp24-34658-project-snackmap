import 'get_individual_map_data.dart';




class SearchByName {
  Map<String, List<String>> sortByName(Map<int, Map<String, String>> allVendingMap) {
    List<String> snackList = GetData().getSnackData(allVendingMap);
    List<String> drinkList = GetData().getDrinkData(allVendingMap);
    String location = '';
    Map<String, List<String>> itemMap = {};
    List<String> tempLocation = [];
    
    // Populate itemMap with snacks
    for (String snack in snackList) {
       location = snackLocation(allVendingMap, snack)!;
      if (location != null) {
        tempLocation.add(location);
      }
      
      itemMap[snack] = tempLocation;
      tempLocation = [];
    }


    for (String drink in drinkList) {
       location = snackLocation(allVendingMap, drink)!;
      if (location != null) {
         tempLocation.add(location);
      }
      itemMap[drink] = tempLocation;
      tempLocation = [];
    }


   print(itemMap);


    return itemMap;
  }


  String? snackLocation(Map<int, Map<String, String>> allVendingMap, String item) {
    String tempCurrent = '';
    for (int vendingNum = 1; vendingNum < 28; vendingNum++) {
      Map<String, dynamic>? currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      if (currentMap != null && currentMap.containsKey(item)) {
        tempCurrent += '${currentMap.keys.first.split(', ')[0]}, ';
      }
    }
      return tempCurrent;
  }


}

