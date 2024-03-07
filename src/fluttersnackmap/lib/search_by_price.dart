//import 'dart:html';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'dart:async';
import 'get_individual_map_data.dart';


class SearchByPrice{

  Map<String,List> priceMap = {};


  Map<String,List>  getSearchByPriceMap(Map<int,Map<String,String>> allVendingMap){
    List<String> drinkList = GetData().getDrinkData(allVendingMap);
    List<String> snackList = GetData().getSnackData(allVendingMap);
    
    //Create a list for each snack that has price and location
    String type = "";
    for(int indexCounter = 0;indexCounter < 19; indexCounter++){
      Map<String,String>? currentMap = {};
      List<String> priceAndLocation = [];
      int vendingNum = 1;
      currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      currentMap?.forEach((key,value){
        int keyTracker = 1;
        //If the key is the payment which has the value of machine type
        if(keyTracker == 2){
          //if it is a drink machine
          if(currentMap?[key] == "Drink"){
            type = 'Drink';
          }else if(currentMap?[key] == "Drink"){
            type == "Snack";
          }
          //if not location or type
        }else if(keyTracker > 2){
            //if the drink is in the list
            if('$key' == drinkList[indexCounter] && type == 'Drink'){
                 if(priceAndLocation.isNotEmpty){
                  //Put the list in order based on lowest price in front
                  //If cost more add to back of list
                  if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    //Add the location
                    priceAndLocation.add(currentMap!.keys.first);
                //If cost less add to front
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1, currentMap!.keys.first);

                }
                //if list is empty add value
              }else{
                priceAndLocation.add('$value');
                priceAndLocation.add(currentMap!.keys.first);
            }
          }
        }
      });
     //For each item add to priceMap
      priceMap[drinkList[indexCounter]] = priceAndLocation;
    }

  for(int indexCounter = 0;indexCounter < 59; indexCounter++){
      Map<String,String>? currentMap = {};
      List<String> priceAndLocation = [];
      int vendingNum = 1;
      currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      currentMap?.forEach((key,value){
        int keyTracker = 1;
        //If the key is the payment which has the value of machine type
        if(keyTracker == 2){
          //if it is a drink machine
          if(currentMap?[key] == "Drink"){
            type = 'Drink';
          }else if(currentMap?[key] == "Drink"){
            type == "Snack";
          }
          //if not location or type
        }else if(keyTracker > 2){
            //if the drink is in the list
            if('$key' == snackList[indexCounter] && type == 'Snack'){
                 if(priceAndLocation.isNotEmpty){
                  //Put the list in order based on lowest price in front
                  //If cost more add to back of list
                  if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    //Add the location
                    priceAndLocation.add(currentMap!.keys.first);
                //If cost less add to front
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1, currentMap!.keys.first);

                }
                //if list is empty add value
              }else{
                priceAndLocation.add('$value');
                priceAndLocation.add(currentMap!.keys.first);
            }
      }
    }
    });
      //For each item add to priceMap
      priceMap[snackList[indexCounter]] = priceAndLocation;
    }
    return(priceMap);
  }
}




        
        
        
        
        
        
        
        
       