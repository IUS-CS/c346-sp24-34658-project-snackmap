import 'package:logger/logger.dart';
import 'get_individual_map_data.dart';

class SearchByLocation {
  Map<String, Map<String, List<String>>> sortByLocation(Map<int, Map<String, String>> allVendingMap) {
    final logger = Logger();

    // Configure logger to output logs to the console
    Logger.level = Level.debug; // Accessing the static setter directly on the class

    Map<String, Map<String, List<String>>> locationMap = {};

    // For each vending machine
    for (int vendingNum = 1; vendingNum < 28; vendingNum++) {
      Map<String, String>? currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      if (currentMap != null) {
        // Get the location
        String location = currentMap.values.first;
        // Create a new entry if location is not present in locationMap
        locationMap.putIfAbsent(location, () => {});

        // Extract items
        currentMap.forEach((key, value) {
          // Check that index belongs to location
          if (key == '1') {
            // Split the key to get the item name and price
            List<String> itemInfo = key.split(',');
            String itemName = itemInfo.first;
            String itemPrice = itemInfo.last;

            // Add item to locationMap
            locationMap[location]!.putIfAbsent(itemName, () => []);
            locationMap[location]![itemName]!.add(itemPrice);
          }
        });
      }
    }

    // Sort items by name within each location
    locationMap.forEach((location, items) {
      locationMap[location] = Map.fromEntries(items.entries.toList()
        ..sort((e1, e2) => e1.key.compareTo(e2.key)));
    });
    // Output the locations to the console
    logger.d(locationMap);

    return locationMap;
  }
}
