import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersnackmap/globals.dart' as Globals;
import 'package:fluttersnackmap/search_by_price.dart';
import 'package:fluttersnackmap/update_globals.dart';




void main() {
  test('Search by price data added', (){
    addFullStockData().callAllFunctions();
    Map<String,List> temp = SearchByPrice().setUpList();
    int actual = temp.length;
    expect(actual,70); 
  });

  test('Sorted', (){
    addFullStockData().callAllFunctions();
    Map<String,List> temp1 = SearchByPrice().setUpList();
    Map<String,List> temp = SearchByPrice().sortPrice(temp1);
    int actual = temp.length;
    expect(actual,70); 
  });

}