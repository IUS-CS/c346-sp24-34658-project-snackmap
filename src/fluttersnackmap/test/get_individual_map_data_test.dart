import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersnackmap/get_individual_map_data.dart';
import 'package:fluttersnackmap/read_and_write.dart';

void main() {
  test('getVendingMachineMap', (){
    Map<int,Map<String,String>>? allVendingMap = readFile();
    int vendingNum = 1;
    Map<String, String>? tempMap = GetData().getVendingMachineMap(allVendingMap,vendingNum);
    int actual = tempMap!.length;
    expect(actual,0);
  });
}