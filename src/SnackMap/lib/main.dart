import 'package:flutter/material.dart';
import 'home_page.dart';
import 'vending_machine_data_sheet_api.dart';


//Start the app
Future main() async{
  VendingMachineDataSheetApi.init();

  runApp(const HomePage());
}