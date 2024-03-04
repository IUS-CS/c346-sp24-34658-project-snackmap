import 'dart:html';
import 'dart:io';

import 'package:fluttersnackmap/globals.dart' as Globals;

import 'package:fluttersnackmap/read_and_write.dart';

class SearchByPrice with ReadAndWrite{
    //Get vending machine data
   void getdata() => readFileHelper( 'doc/FileInformation/VendingInformation.txt');

  //All prices for a snack is the same
   void getVendingPriceSnack(){

    Map<int,String> Cheetos = {};
    

    //Add each snack vending machine to a list then put all of the snack vending machines into a List<String,String>
    //item : [price,location]
    Map<String,Map<int,String>> snackPrice = {};
    Map<int,String> mapWithPrice = {};
    
    

    Globals.GlobalData.vendingnumPS12.forEach((key, value) {
      String readPrice = '$value';
      //Remove $
      readPrice = readPrice..substring(1);
      int price = int.parse(readPrice);
      //Price : Location
      mapWithPrice[price] = 'PS 1st floor near bathrooms 2';
      

    });
    

    
   }



}
