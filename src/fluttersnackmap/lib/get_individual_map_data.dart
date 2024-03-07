import 'dart:io';
  
  
  //? is in case allVending map is null so that code does not crash
class GetData{

  Map<String, String>? getVendingMachineMap(Map<int,Map<String,String>> allVendingMap,var vendingNum){
    //if number of the vending machine exist
    if(vendingNum > 0 && vendingNum < 28 ){
      return(allVendingMap[vendingNum]);
    }
  

  }

  List<String> getSnackData(Map<int,Map<String,String>> allVendingMap){
    List<String> snackList = [];
  
    for(int vendingNum = 1; vendingNum < 28; vendingNum++){
      Map<String,String> currentMap = {};
      String type = " ";
      currentMap = getVendingMachineMap(allVendingMap, vendingNum)!;
      int indexCounter = 1;
      currentMap.forEach((key,value){
          if(indexCounter > 2){
          //If snack type
          if(type == "Snack"){

            if(snackList.isNotEmpty){
              //if key is not in list add it
              if(!snackList.contains(key)){
                snackList.add(key);
              }

            }else{
             snackList.add(key);
           }
           indexCounter++;
           }
          }else if(indexCounter == 2){
            if(currentMap[key] == "Snack"){
              type = "Snack";
            }
          }
          indexCounter++;
    
        });
  }
  return(snackList);

 }

   List<String> getDrinkData(Map<int,Map<String,String>> allVendingMap){
    List<String> drinkList = [];
  
    for(int vendingNum = 1; vendingNum < 28; vendingNum++){
      Map<String,String> currentMap = {};
      String type = " ";
      currentMap = getVendingMachineMap(allVendingMap, vendingNum)!;
      int indexCounter = 1;
      currentMap.forEach((key,value){
          if(indexCounter > 2){
          //If snack type
          if(type == "Drink"){

            if(drinkList.isNotEmpty){
              //if key is not in list add it
              if(!drinkList.contains(key)){
                drinkList.add(key);
              }

            }else{
             drinkList.add(key);
           }
           indexCounter++;
           }
          }else if(indexCounter == 2){
            if(currentMap[key] == "Drink"){
              type = "Drink";
            }
          }
          indexCounter++;
    
        });
  }
  return(drinkList);

 }
} 