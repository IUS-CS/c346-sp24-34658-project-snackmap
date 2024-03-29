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
    




Future<void> writePriceMap(Map<String, List<String>> priceMap) async {
  final File file = File('assets/PriceMap.txt');

  //Clear the contents of the file
  //await file.writeAsString('');
   await file.writeAsString('', mode: FileMode.writeOnly);

  //Write data to the file
  priceMap.forEach((key, value) {
    if (value != null) {
      //Location and price strings
      final formattedValues = value.map((item) => item.split(': ').join(', ')).join(', ');
      //Write key and formatted values to the file
      file.writeAsStringSync('$key : $formattedValues\n', mode: FileMode.append);
    } else {
      file.writeAsStringSync('$key : null\n', mode: FileMode.append);
    }
  });
}
