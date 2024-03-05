import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersnackmap/globals.dart' as Globals;
import 'package:fluttersnackmap/read_and_write.dart';




void main() {
  group('Read file test', () {
    test('File found and successfully read', () async{
      String fileName = 'text_notes/VendingInformation.txt';
      int expected = 1;
      try {
        final contents = await File(fileName).readAsString();
        int actual = 1;
        
      } on FileSystemException catch (e) {
          int actual = 0;
        return('File not found: ${e.message}');
      }
      expect(expected,1);
    });
        test('File not found', () async{
      String fileName = 'ty.txt';
      int expected = 1;
      try {
        final contents = await File(fileName).readAsString();
        int actual = 1;
      } on FileSystemException catch (e) {
          int actual = 0;
        return('File not found: ${e.message}');
      }
      expect(expected,0);
    });

  
  });

  
}