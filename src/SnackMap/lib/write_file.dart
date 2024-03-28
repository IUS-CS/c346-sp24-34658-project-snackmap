import 'dart:io';

void main() async {
  final filename = 'VendingInformation.txt';
  var file = await File(filename).writeAsString('x');
  //Edit the file.
}