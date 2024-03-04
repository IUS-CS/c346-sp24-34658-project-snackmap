import 'dart:io';

import 'package:fluttersnackmap/globals.dart' as Globals;

import 'package:fluttersnackmap/read_and_write.dart';

class SearchByPrice with ReadAndWrite{
    //Get vending machine data
   void getdata() => readFileHelper( 'doc/FileInformation/VendingInformation.txt');

  //All prices for a snack is the same
   void getVendingPriceSnack(){


    //Add each snack vending machine to a list then put all of the snack vending machines into a Map
    List<String> PS12Snack = [];
    Globals.GlobalData.vendingnumPS12.forEach((key, value) {
      PS12Snack.add(key);
    });
    List<String> LF11Snack = [];
    Globals.GlobalData.vendingnumLF11.forEach((key, value) {
      LF11Snack.add(key);
    });

    
   }



}
