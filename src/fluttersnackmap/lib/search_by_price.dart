//import 'dart:html';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'dart:async';
import 'get_individual_map_data.dart';


class SearchByPrice{

  Map<String,List> priceMap = {};
 Map<String,String>? currentMap = {};
  List<String> priceAndLocation = [];
  String? type = " ";


  Map<String, List?>  getSearchByPriceMap(Map<int,Map<String,String>> allVendingMap){
    List<String> drinkList = GetData().getDrinkData(allVendingMap);
    List<String> snackList = GetData().getSnackData(allVendingMap);
    for(int vendingNum = 1; vendingNum < allVendingMap.length; vendingNum++){
      currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
      int keyTracker = 1;
      currentMap.forEach((key,value){
        if(keyTracker == 2){
          type = currentMap![key];
        }else if(keyTracker > 2){
          if(type == "Snack"){
            
            priceAndLocation.add(value);
            priceAndLocation.add(currentMap!.keys.first);
          }
        }

      });
    }

  }
}
    
//     //Create a list for each snack that has price and location
//     String type = "";
//   for(int vendingNum = 1; vendingNum < 28; vendingNum++){
//       Map<String,String>? currentMap = {};
//       List<String> priceAndLocation = [];
//       int keyTracker = 1;
//       currentMap = GetData().getVendingMachineMap(allVendingMap, vendingNum);
//          currentMap?.forEach((key,value){
//           if(keyTracker == 2){
//             String? type = currentMap![key];
//           }else if(keyTracker > 2){
//             for(int indexCounter = 0;indexCounter < snackList.length; indexCounter++){
//               if('$key' == snackList[indexCounter]){
//                   if(priceAndLocation.isNotEmpty){
//                     //Put the list in order based on lowest price in front
//                     //If cost more add to back of list
//                     if(double.parse('$value') >= double.parse(priceAndLocation[0])){
//                       priceAndLocation.add('$value');
//                       //Add the location
//                       priceAndLocation.add(currentMap!.keys.first);
//                   //If cost less add to front
//                   }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
//                     priceAndLocation.insert(0, '$value');
//                     priceAndLocation.insert(1, currentMap!.keys.first);

//                   }
//                   //if list is empty add value
//                 }else{
//                   priceAndLocation.add('$value');
//                   priceAndLocation.add(currentMap!.keys.first);
//               }

//             }
//             //For each item add to priceMap
//             priceMap[snackList[indexCounter]] = priceAndLocation;
  
//           }
//           for(int indexCounter = 0;indexCounter < drinkList.length; indexCounter++){
//               if('$key' == drinkList[indexCounter]){
//                   if(priceAndLocation.isNotEmpty){
//                     //Put the list in order based on lowest price in front
//                     //If cost more add to back of list
//                     if(double.parse('$value') >= double.parse(priceAndLocation[0])){
//                       priceAndLocation.add('$value');
//                       //Add the location
//                       priceAndLocation.add(currentMap!.keys.first);
//                   //If cost less add to front
//                   }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
//                     priceAndLocation.insert(0, '$value');
//                     priceAndLocation.insert(1, currentMap!.keys.first);

//                   }
//                   //if list is empty add value
//                 }else{
//                   priceAndLocation.add('$value');
//                   priceAndLocation.add(currentMap!.keys.first);
//               }
//             }
//               //For each item add to priceMap
//               priceMap[drinkList[indexCounter]] = priceAndLocation;
  
//           }
//           }
          
//           keyTracker++;
//          }); //for each

//   }
//     final sortMap = priceMap.keys.toList()..sort();
//     final sortedPriceMap = Map.fromEntries(sortMap.map((key) => MapEntry(key, priceMap[key])));
//     sortedPriceMap.forEach((key, value) {
//     print('$key: $value');
//     });
    
//     return(sortedPriceMap);
    
//   }
// }
  


        
        
        
        
        
        
        
        
       