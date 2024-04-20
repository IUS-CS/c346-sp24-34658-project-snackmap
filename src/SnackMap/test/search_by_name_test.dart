import 'package:flutter_test/flutter_test.dart';
import 'package:SnackMap/search_by_name.dart';
import 'package:SnackMap/vending_machine_data_sheet_api.dart';



void main() async{
  await VendingMachineDataSheetApi.init();
  test('Search by name map length', (){
    Map<String, String> temp = SearchByName().sortByName(allVendingMap);
    int actual = temp.length;
    expect(actual,88); 
  });

}
