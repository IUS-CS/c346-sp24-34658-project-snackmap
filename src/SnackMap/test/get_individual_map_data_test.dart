import 'package:SnackMap/vending_machine_data_sheet_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:SnackMap/get_individual_map_data.dart';

void main() async{
  await VendingMachineDataSheetApi.init();
  group("Get vending machine maps",(){
    for (int vendingNum = 1; vendingNum <= 27; vendingNum++) {
    test('Get vending number $vendingNum data', (){
      Map<String, dynamic>? tempMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      int expected = vendingNum;
      int actual = allVendingMap.keys.elementAt(vendingNum-1);
      print(tempMap);
      expect(actual, expected);
    });
  }
  });
  group("Snack and drink data", (){
    test("Get snack data",(){
      List<String> snackList = GetData().getSnackData(allVendingMap);
      int actual = snackList.length;
      print(snackList);
      expect(actual,70);

    });
    test("Get drink data",(){
      List<String> drinkList = GetData().getDrinkData(allVendingMap);
      int actual = drinkList.length;
      print(drinkList);
      expect(actual,18);

    });
  });
}