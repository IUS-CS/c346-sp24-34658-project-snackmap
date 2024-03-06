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


}