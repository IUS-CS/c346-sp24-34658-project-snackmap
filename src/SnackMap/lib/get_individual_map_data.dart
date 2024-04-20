//? is in case allVending map is null so that code does not crash
class GetData{

  Map<String, dynamic>? getVendingMachineMap(Map<int,Map<String,dynamic>> allVendingMap,var vendingNum){
    //If number of the vending machine exist
    if(vendingNum > 0 && vendingNum < 28 ){
      return(allVendingMap[vendingNum]);
    }
    return null;
  }

  List<String> getSnackData(Map<int,Map<String,dynamic>> allVendingMap){
    List<String> snackList = [];
  
    //For each vending number
    for(int vendingNum = 1; vendingNum < 28; vendingNum++){
      Map<String,dynamic> currentMap = {};
      String type = " ";
      currentMap = getVendingMachineMap(allVendingMap, vendingNum)!;
      int indexCounter = 1;
      //For each key in map
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
           //Get the machine type
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

   List<String> getDrinkData(Map<int,Map<String,dynamic>> allVendingMap){
    List<String> drinkList = [];
  
    for(int vendingNum = 1; vendingNum < 28; vendingNum++){
      Map<String,dynamic> currentMap = {};
      String type = " ";
      currentMap = getVendingMachineMap(allVendingMap, vendingNum)!;
      int indexCounter = 1;
      currentMap.forEach((key,value){
          if(indexCounter > 2){
          //If drink type
          if(type == "Drink"){

            if(drinkList.isNotEmpty){
              //If key is not in list add it
              if(!drinkList.contains(key)){
                drinkList.add(key);
              }

            }else{
             drinkList.add(key);
           }
           indexCounter++;
           }
           //Get the item type
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