import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersnackmap/globals.dart' as Globals;
import 'package:fluttersnackmap/update_globals.dart';




void main() {
  group('Full stock added for vending machines', () {
    test('PS1Vending', () async{
      addFullStockData().PS11Vending();
      int actual = Globals.vendingnumPS11.length;
      expect(actual,8); 
    });

    test('PS2Vending', () async{
      addFullStockData().PS12Vending();
      int actual = Globals.vendingnumPS12.length;
      expect(actual,25); 
    });

    test('LF11Vending', () async{
      addFullStockData().LF11Vending();
      int actual = Globals.vendingnumLF11.length;
      expect(actual,21); 
    });

    test('LF13Vending', () async{
      addFullStockData().LF13Vending();
      int actual = Globals.vendingnumLF13.length;
      expect(actual,7); 
    });

    test('LF14Vending', () async{
      addFullStockData().LF14Vending();
      int actual = Globals.vendingnumLF14.length;
      expect(actual, 29); 
    });

    test('LF15Vending', () async{
      addFullStockData().LF15Vending();
      int actual = Globals.vendingnumLF15.length;
      expect(actual, 7); 
    });

    test('CV11Vending', () async{
      addFullStockData().CV11Vending();
      int actual = Globals.vendingnumCV11.length;
      expect(actual, 32); 
    });

    test('CV21Vending', () async{
      addFullStockData().CV21Vending();
      int actual = Globals.vendingnumCV21.length;
      expect(actual, 8); 
    });

    test('CV22Vending', () async{
      addFullStockData().CV22Vending();
      int actual = Globals.vendingnumCV22.length;
      expect(actual, 8); 
    });

    test('L11Vending', () async{
      addFullStockData().L11Vending();
      int actual = Globals.vendingnumL11.length;
      expect(actual, 8); 
    });

    test('HH21Vending', () async{
      addFullStockData().HH21Vending();
      int actual = Globals.vendingnumHH21.length;
      expect(actual, 8); 
    });

    test('HH22Vending', () async{
      addFullStockData().HH22Vending();
      int actual = Globals.vendingnumHH22.length;
      expect(actual, 7); 
    });

    test('HH31Vending', () async{
      addFullStockData().HH31Vending();
      int actual = Globals.vendingnumHH31.length;
      expect(actual, 8); 
    });

    test('HH32Vending', () async{
      addFullStockData().HH32Vending();
      int actual = Globals.vendingnumHH32.length;
      expect(actual, 14); 
    });

    test('UCSg1Vending', () async{
      addFullStockData().UCSg1Vending();
      int actual = Globals.vendingnumUCSg1.length;
      expect(actual, 8); 
    });

    test('UCS21Vending', () async{
      addFullStockData().UCS21Vending();
      int actual = Globals.vendingnumUCS21.length;
      expect(actual, 7); 
    });

    test('U1Vending', () async{
      addFullStockData().U1Vending();
      int actual = Globals.vendingnumU1.length;
      expect(actual, 9); 
    });

    test('U2Vending', () async{
      addFullStockData().U2Vending();
      int actual = Globals.vendingnumU2.length;
      expect(actual, 42); 
    });

    test('U3Vending', () async{
      addFullStockData().U3Vending();
      int actual = Globals.vendingnumU3.length;
      expect(actual, 6); 
    });

    test('KVG1Vending', () async{
      addFullStockData().KVG1Vending();
      int actual = Globals.vendingnumKVG1.length;
      expect(actual, 8); 
    });

    test('KVG2Vending', () async{
      addFullStockData().KVG2Vending();
      int actual = Globals.vendingnumKVG2.length;
      expect(actual, 1); 
    });

    test('KVG3Vending', (){
      addFullStockData().KVG3Vending();
      int actual = Globals.vendingnumKVG3.length;
      expect(actual, 1); 
    });

    test('KVG4Vending', (){
      addFullStockData().KVG4Vending();
      int actual = Globals.vendingnumKVG4.length;
      expect(actual, 8); 
    });

    test('KV11Vending', (){
      addFullStockData().KV11Vending();
      int actual = Globals.vendingnumKV11.length;
      expect(actual, 8); 
    });
    test('KV21Vending', (){
      addFullStockData().KV21Vending();
      int actual = Globals.vendingnumKV21.length;
      expect(actual, 7); 
    });

    test('KV22Vending', (){
      addFullStockData().KV22Vending();
      int actual = Globals.vendingnumKV22.length;
      expect(actual, 5); 
    });



  });


  group('Item List Loaded', () {
    test('drinkList', (){
      addFullStockData().drinkListAdd();
      int actual = Globals.drinkList.length;
      expect(actual,18);
    });

    test('snackList', (){
      addFullStockData().snackListAdd();
      int actual = Globals.snackList.length;
      expect(actual,52);
    });

  });
}