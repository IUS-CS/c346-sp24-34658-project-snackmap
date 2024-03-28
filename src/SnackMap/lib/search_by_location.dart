import 'package:SnackMap/get_individual_map_data.dart';

class SearchByLocation {
  void printLocations(Map<String, Map<String, dynamic>> locationMap) {
    locationMap.forEach((location, _) {
      // ignore: avoid_print
      print(location);
    });
  }

  Map<String, Map<String, dynamic>> sortByLocation(Map<int, Map<String, String>> allVendingMap) {
    Map<String, Map<String, dynamic>> locationMap = {};

    // For each vending machine
    for (int vendingNum = 1; vendingNum < 28; vendingNum++) {
      Map<String, String>? currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      if (currentMap != null) {
        // Extract location from currentMap
        String location = currentMap.keys.first.split(', ')[0];
        // Extract status and items from currentMap
        String status = getStatus(currentMap);
        Map<String, double> items = getItems(currentMap);

        // Add items to locationMap based on location
        if (locationMap.containsKey(location)) {
          // Merge items with existing location entry
          locationMap[location]!['items'].addAll(items);
        } else {
          // Create a new location entry
          locationMap[location] = {
            'status': status,
            'items': items,
          };
        }
      }
    }
    // ignore: avoid_print
    print(locationMap);
    return locationMap;
  }

  String getStatus(Map<String, String> currentMap) {
    String status = 'Unknown';
    // Search for status field
    currentMap.forEach((key, value) {
      if (value.toLowerCase() == 'working' || value.toLowerCase() == 'out of order') {
        status = value;
      }
    });
    return status;
  }

  Map<String, double> getItems(Map<String, String> currentMap) {
  Map<String, double> items = {};
  bool firstItem = true;
  // Extract items from currentMap
  currentMap.forEach((key, value) {
    // Skip 'location' key and any key starting with 'accepts'
    if (key.toLowerCase() != 'location' && !key.toLowerCase().startsWith('accepts')) {
      // Skip the first item
      if (!firstItem) {
        // Add item to items map
        items[key] = double.tryParse(value) ?? 0.0;
      }
      firstItem = false;
    }
  });
  return items;
}
}
