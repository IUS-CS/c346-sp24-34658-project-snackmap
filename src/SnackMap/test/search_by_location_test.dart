import 'package:flutter_test/flutter_test.dart';
import 'package:SnackMap/search_by_location.dart';
import 'package:SnackMap/vending_machine_data_sheet_api.dart';




void main() async{
  await VendingMachineDataSheetApi.init();
  test('Search by location map length', (){
    Map<String, List<String>> temp = SearchByLocation().sortByLocation(allVendingMap);
    int actual = temp.length;
    expect(actual,27); 
  });

}
