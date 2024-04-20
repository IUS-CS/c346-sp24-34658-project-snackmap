import 'package:flutter_test/flutter_test.dart';
import 'package:SnackMap/vending_machine_data_sheet_api.dart';



void main() async{
  await VendingMachineDataSheetApi.init();
  test('Add item', ()async{
    int selectedVending = 1;
    Map<String, double> selectedItems = {
      "Drink": 1.00,
      };
    await VendingMachineDataSheetApi.sendAddItem(selectedVending,selectedItems);
  });

  test('Remove item', ()async{
    int selectedVending = 1;
    List<String> selectedItems = ["Drink"];
    await VendingMachineDataSheetApi.sendRemoveItem(selectedVending,selectedItems);
  });

    test('Add items', ()async{
    int selectedVending = 1;
    Map<String, double> selectedItems = {
      "Drink": 1.00,
      "Snack": 3.00
      };
    await VendingMachineDataSheetApi.sendAddItem(selectedVending,selectedItems);
  });

  test('Remove items', ()async{
    int selectedVending = 1;
    List<String> selectedItems = ["Drink", "Snack"];
    await VendingMachineDataSheetApi.sendRemoveItem(selectedVending,selectedItems);
  });

}