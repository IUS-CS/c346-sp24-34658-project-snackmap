import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersnackmap/search_by_price.dart';

import 'package:fluttersnackmap/get_individual_map_data.dart';
import 'package:fluttersnackmap/read_and_write.dart';



void main() {
  test('Search by price map length', (){
    Map<int,Map<String,String>> allVendingMap = readFile();
    Map<String, List?> temp = SearchByPrice().getSearchByPriceMap(allVendingMap);
    int actual = temp.length;
    expect(actual,89); //54 
  });

}