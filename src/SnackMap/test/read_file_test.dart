import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:SnackMap/read_and_write.dart';




void main() {
  group('Read file test', () {
    test('File found and successfully read', () async{
      Map<int,Map<String,String>> allVendingMap = readFile('assets/VendingInformation.txt');
      int actual = allVendingMap.length;
      expect(actual,27);
    });
    test('File not found', () async{
      Map<int,Map<String,String>> allVendingMap = readFile('helloworld.txt');
      int actual = allVendingMap.length;
      expect(actual,0);
    });

    test('allVendingMap', (){
    Map<int,Map<String,String>> allVendingMap = readFile('assets/VendingInformation.txt');
    int actual = allVendingMap.length;
    expect(actual,27);
  });

  
  });
  test('Write to PriceMap.txt works',(){
    var myFile = File('assets/PriceMap.txt'); 
    var actual = myFile.readAsLinesSync().length;
    expect(actual,89);
  });
}
  

