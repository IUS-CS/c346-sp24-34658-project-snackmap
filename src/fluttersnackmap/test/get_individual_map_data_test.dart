import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersnackmap/get_individual_map_data.dart';
import 'package:fluttersnackmap/read_and_write.dart';

void main() {
  group("Get vending machine maps",(){
      test('Get PS11', (){
      Map<int,Map<String,String>> allVendingMap = readFile();
      int vendingNum = 1;
      Map<String, String>? tempMap = GetData().getVendingMachineMap(allVendingMap,vendingNum);
      int actual = tempMap!.length;
      tempMap.forEach((key, value) {
    });
      expect(actual,8);
    });
  });
  group("Snack and drink data", (){
    test("Get snack",() {
      Map<int,Map<String,String>> allVendingMap = readFile();
      List<String> snackList = GetData().getSnackData(allVendingMap);
      int actual = snackList.length;
      expect(actual,43);

    });
    test("Get drink",() {
      Map<int,Map<String,String>> allVendingMap = readFile();
      List<String> drinkList = GetData().getDrinkData(allVendingMap);
      int actual = drinkList.length;
      expect(actual,11);

    });
  });
}