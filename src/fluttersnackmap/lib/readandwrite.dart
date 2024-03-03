import 'dart:io';
//import 'package:flutter_test/flutter_test.dart';


class Readandwrite{
  //Reads from the VendingInformation.txt file
    Future<int> readfile(String filename) async {
      try {
        final contents = await File(filename).readAsString();


        int linecounter = 0;
        String key = "";
        String value = "";
        int vendingnum = 1;
        var vendingnumPS11 = Map<String, String>();
        var vendingnumPS12 = Map<String, String>();
        var vendingnumLF11 = Map<String, String>();
        var vendingnumLF12 = Map<String, String>();
        var vendingnumLF13 = Map<String, String>();
        var vendingnumLF14 = Map<String, String>();
        var vendingnumLF15 = Map<String, String>(); 
        var vendingnumCV11 = Map<String, String>();
        var vendingnumCV21 = Map<String, String>();
        var vendingnumCV22 = Map<String, String>();
        var vendingnumL11 = Map<String, String>();
        var vendingnumHH21 = Map<String, String>();
        var vendingnumHH22 = Map<String, String>();
        var vendingnumHH31 = Map<String, String>();
        var vendingnumHH32 = Map<String, String>();
        var vendingnumUCSg1 = Map<String, String>();
        var vendingnumUCS21 = Map<String, String>();
        var vendingnumU1 = Map<String, String>();
        var vendingnumU2 = Map<String, String>();
        var vendingnumU3 = Map<String, String>();
        var vendingnumKVG1 = Map<String, String>();
        var vendingnumKVG2 = Map<String, String>();
        var vendingnumKVG3 = Map<String, String>();
        var vendingnumKV21 = Map<String, String>();
        var vendingnumKV22 = Map<String, String>();
        
        //File file = File(filename);
        
        // read file
        //String contents = file.readAsStringSync();
        
        List<String> lines = contents.split(',');
        
        // print file
        for (var line in lines) {
          //Skips comment lines in file
          if(linecounter > 1){
              if(line != " " && line != "\n"){
              //If even number
                if(linecounter % 2 == 0){
                  key = line;
                }else{
                  value = line;

                  //First time through location, status
                  //Next time payment types, vending machine type
                  //All other item, price

                  //vending machines named based on floor number then number on floor.
                  if(vendingnum == 1){
                    vendingnumPS11[key] = value;
                  }else if(vendingnum ==2){
                    vendingnumPS12[key] = value;
                  }else if(vendingnum ==3){
                    vendingnumLF11[key] = value;
                  }else if(vendingnum == 4){
                    vendingnumLF12[key] = value;
                  }else if(vendingnum == 5){
                    vendingnumLF13[key] = value;
                  }else if(vendingnum == 6){
                    vendingnumLF14[key] = value;
                  }else if(vendingnum == 7){
                    vendingnumLF15[key] = value;
                  }else if(vendingnum == 8){
                    vendingnumCV11[key] = value;
                  }else if(vendingnum == 9){
                    vendingnumCV21[key] = value;
                  }else if(vendingnum == 10){
                    vendingnumCV22[key] = value;
                  }else if(vendingnum == 11){
                    vendingnumL11[key] = value;
                  }else if(vendingnum == 12){
                    vendingnumHH21[key] = value;
                  }else if(vendingnum == 13){
                    vendingnumHH22[key] = value;
                  }else if(vendingnum == 14){
                    vendingnumHH31[key] = value;
                  }else if(vendingnum == 15){
                    vendingnumHH32[key] = value;
                  }else if(vendingnum == 16){
                    vendingnumUCSg1[key] = value;
                  }else if(vendingnum == 17){
                    vendingnumUCS21[key] = value;
                  }else if(vendingnum == 18){
                    vendingnumU1[key] = value;
                  }else if(vendingnum == 19){
                    vendingnumU2[key] = value;
                  }else if(vendingnum == 20){
                    vendingnumU3[key] = value;
                  }else if(vendingnum == 21){
                    vendingnumKVG1[key] = value;
                  }else if(vendingnum == 22){
                    vendingnumKVG2[key] = value;
                  }else if(vendingnum == 23){
                    vendingnumKVG3[key] = value;
                  }else if(vendingnum == 24){
                    vendingnumKV21[key] = value;
                  }else if(vendingnum == 25){
                    vendingnumKV22[key] = value;
                  }
                }
            }else if(line == " "){
              vendingnum++;
              linecounter--;
            }
            
          }
          linecounter++;
        }


        //Print put maps
        //Used for testing
        vendingnumPS11.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumPS12.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumLF11.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumLF12.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumLF13.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumLF14.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumLF15.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumCV11.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumCV21.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumCV22.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumL11.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumHH21.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumHH22.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumHH31.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumHH32.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumUCSg1.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumUCS21.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumU1.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumU2.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumU3.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumKVG1.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumKVG2.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumKVG3.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumKV21.forEach((k, v) => print("Key: $k, Value: $v"));
        vendingnumKV22.forEach((k, v) => print("Key: $k, Value: $v"));
        
        return(1);


        //If not found
        } on FileSystemException catch (e) {
          
          print('File not found: ${e.message}');
          return(0);
        }
      
    
  }
  
}

