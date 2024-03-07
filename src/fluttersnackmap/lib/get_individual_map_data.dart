import 'dart:io';
  
  
  //? is in case allVending map is null so that code does not crash
class GetData{

  Map<String, String>? getVendingMachineMap(Map<int,Map<String,String>> allVendingMap,var vendingNum){
    //if number of the vending machine exist
    if(vendingNum > 1 && vendingNum < 28 ){
      return(allVendingMap[vendingNum]);
    }
  

  }

  List<String> getSnackData(Map<int,Map<String,String>> allVendingMap){
    List<String> snackList = [];
    for(int vendingNum = 0; vendingNum < 28; vendingNum++){
      Map<String,String> currentMap = {};
      currentMap = getVendingMachineMap(allVendingMap, vendingNum)!;
      currentMap.forEach((key,value){
        //If snack type
        if(currentMap?[key] == "Snack"){

          if(!snackList.isEmpty){
            //if key is not in list add it
            if(!snackList.contains(key)){
              snackList.add(key);
            }

        }
        }



  });
  }
  return(snackList);

 }

   List<String> getDrinkData(Map<int,Map<String,String>> allVendingMap){
    List<String> snackList = [];
    for(int vendingNum = 0; vendingNum < 28; vendingNum++){
      Map<String,String> currentMap = {};
      currentMap = getVendingMachineMap(allVendingMap, vendingNum)!;
      currentMap.forEach((key,value){
        //If snack type
        if(currentMap?[key] == "Snack"){
          
          if(!snackList.isEmpty){
            //if key is not in list add it
            if(!snackList.contains(key)){
              snackList.add(key);
            }

        }
        }



  });
  }
  return(snackList);

 }
} 