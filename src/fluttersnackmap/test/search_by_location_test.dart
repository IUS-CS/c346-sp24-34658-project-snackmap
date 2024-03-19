import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersnackmap/search_by_location.dart';
import 'package:fluttersnackmap/read_and_write.dart';



void main() {
  test('Search by location map length', (){
    Map<int,Map<String,String>> allVendingMap = readFile('assets/VendingInformation.txt');
    Map<String, Map<String, dynamic>> temp = SearchByLocation().sortByLocation(allVendingMap);
    int actual = temp.length;
    expect(actual,27); 
  });

}
