import 'package:flutter_test/flutter_test.dart';
import 'package:SnackMap/search_by_price.dart';

import 'package:SnackMap/read_and_write.dart';



void main() {
  test('Search by price map length', (){
    Map<int,Map<String,String>> allVendingMap = readFile('assets/VendingInformation.txt');
    Map<String, List<String>?> temp = SearchByPrice().sortByPrice(allVendingMap);
    int actual = temp.length;
    expect(actual,89); 
  });

}