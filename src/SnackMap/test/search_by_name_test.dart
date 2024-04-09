import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersnackmap/search_by_name.dart';
import 'package:fluttersnackmap/read_and_write.dart';



void main() {
  test('Search by name map length', (){
    Map<int,Map<String,String>> allVendingMap = readFile('assets/VendingInformation.txt');
    Map<String, String> temp = SearchByName().sortByName(allVendingMap);
    int actual = temp.length;
    expect(actual,89); 
  });

}
