import 'dart:io';
  //Reads from the VendingInformation.txt file
   Map<int,Map<String,String>> readFile(String fileName){
    int lineCounter = 0;
    String key = "";      
    String value = "";
    int vendingnum = 1;
    Map<String,String> vendingMap = {};
    Map<int,Map<String,String>> allVendingMap = {};
    try {
        var contents = File(fileName).readAsStringSync();

          
          
          //File file = File(filename);
          
          // read file
          //String contents = file.readAsStringSync();
          
          List<String> contentList = contents.split(',');
          
          // print file
          for (String char in contentList) {
              if(char != ' '){
                //If even number
                  if(lineCounter % 2 == 0){
                    key = char;
                  }else{
                    //removes spaces
                    value = char.trim();


                    //First time through location, status
                    //Next time payment types, vending machine type
                    //All other item, price

                    //vending machines named based on floor number then number on floor.
                    //vending machines named based on floor number then number on floor.
                    
                      //Stores individual maps.
                      vendingMap[key] = value;
                  
                  }
              }else if(char == ' '){
                allVendingMap[vendingnum] = Map.from(vendingMap);
                vendingMap = {};
                vendingnum++;
                lineCounter--;
              }
              
            lineCounter++;
          }
        } on FileSystemException catch (e) {
          print('File not found: ${e.message}');
        }

    return(allVendingMap);

  }
    



writePriceMap(Map<String, List<String>?> priceMap)async{
  File f = File("assets/PriceMap.txt");
  //Clears file
  f.writeAsStringSync('');
 
  priceMap.forEach((key, value) {
    // Write key and values
    if (value != null) {
      var valueString = value.join(", ");
      f.writeAsStringSync('$key : $valueString\n', mode: FileMode.append);
    } else {
      
      f.writeAsStringSync('$key : null\n', mode: FileMode.append);
    }
  });
  

  
}