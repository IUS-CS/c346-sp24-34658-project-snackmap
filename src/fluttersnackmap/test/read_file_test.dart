import 'dart:io';
import 'package:flutter_test/flutter_test.dart';




void main() {
  group('Read file test', () {
    test('File found and successfully read', () async{
      String fileName = 'doc/FileInformation/VendingInformation.txt';
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
      String fileName = '.txt';
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