import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersnackmap/get_individual_map_data.dart';
import 'package:fluttersnackmap/read_and_write.dart';

void main() {
  group("Get vending machine maps",(){
      test('Get vending number 1', (){
      Map<int,Map<String,String>> allVendingMap = readFile('assets/VendingInformation.txt');
      int vendingNum = 1;
      Map<String, String>? tempMap = GetData().getVendingMachineMap(allVendingMap,vendingNum);
      int actual = tempMap!.length;
      expect(actual,8);
    });
  });
  group("Snack and drink data", (){
    test("Get snack",() {
      Map<int,Map<String,String>> allVendingMap = readFile('assets/VendingInformation.txt');
      List<String> snackList = GetData().getSnackData(allVendingMap);
      int actual = snackList.length;
      expect(actual,71);

    });
    test("Get drink",() {
      Map<int,Map<String,String>> allVendingMap = readFile('assets/VendingInformation.txt');
      List<String> drinkList = GetData().getDrinkData(allVendingMap);
      int actual = drinkList.length;
      expect(actual,18);

    });
  });
}