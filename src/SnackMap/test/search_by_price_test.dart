import 'package:flutter_test/flutter_test.dart';
import 'package:SnackMap/search_by_price.dart';
import 'package:SnackMap/vending_machine_data_sheet_api.dart';



void main() async{
  await VendingMachineDataSheetApi.init();
  test('Search by price map length', (){
    Map<String, List<String>?> temp = SearchByPrice().sortByPrice(allVendingMap);
    int actual = temp.length;
    print(temp);
    expect(actual,88); 
  });

}