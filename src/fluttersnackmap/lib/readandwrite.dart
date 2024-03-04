import 'dart:io';

//import 'package:flutter/material.dart';
//import 'package:flutter_test/flutter_test.dart';

import 'package:fluttersnackmap/globals.dart' as Globals;


mixin  readandwrite{

  void readfilehelper(String filename){
    readfile(filename);
  }
  //Reads from the VendingInformation.txt file
      int readfile(String filename){
      try {
        String contents = File(filename).readAsString() as String;


        int linecounter = 0;
        String key = "";
        String value = "";
        int vendingnum = 1;
        
        //File file = File(filename);
        
        // read file
        //String contents = file.readAsStringSync();
        
        List<String> contentlist = contents.split(',');
        
        // print file
        for (var char in contentlist) {
          //Skips comment lines in file
          if(linecounter > 1){
              if(char != "." && char != "?"){
              //If even number
                if(linecounter % 2 == 0){
                  key = char;
                }else{
                  value = char;

                  //First time through location, status
                  //Next time payment types, vending machine type
                  //All other item, price

                  //vending machines named based on floor number then number on floor.
                  if(vendingnum == 1){
                    Globals.GlobalData.vendingnumPS11[key] = value;
                  }else if(vendingnum ==2){
                    Globals.GlobalData.vendingnumPS12[key] = value;
                  }else if(vendingnum ==3){
                    Globals.GlobalData.vendingnumLF11[key] = value;
                  }else if(vendingnum == 4){
                    Globals.GlobalData.vendingnumLF12[key] = value;
                  }else if(vendingnum == 5){
                    Globals.GlobalData.vendingnumLF13[key] = value;
                  }else if(vendingnum == 6){
                    Globals.GlobalData.vendingnumLF14[key] = value;
                  }else if(vendingnum == 7){
                    Globals.GlobalData.vendingnumLF15[key] = value;
                  }else if(vendingnum == 8){
                    Globals.GlobalData.vendingnumCV11[key] = value;
                  }else if(vendingnum == 9){
                   Globals.GlobalData. vendingnumCV21[key] = value;
                  }else if(vendingnum == 10){
                    Globals.GlobalData.vendingnumCV22[key] = value;
                  }else if(vendingnum == 11){
                    Globals.GlobalData.vendingnumL11[key] = value;
                  }else if(vendingnum == 12){
                   Globals.GlobalData. vendingnumHH21[key] = value;
                  }else if(vendingnum == 13){
                    Globals.GlobalData.vendingnumHH22[key] = value;
                  }else if(vendingnum == 14){
                    Globals.GlobalData.vendingnumHH31[key] = value;
                  }else if(vendingnum == 15){
                    Globals.GlobalData.vendingnumHH32[key] = value;
                  }else if(vendingnum == 16){
                    Globals.GlobalData.vendingnumUCSg1[key] = value;
                  }else if(vendingnum == 17){
                    Globals.GlobalData.vendingnumUCS21[key] = value;
                  }else if(vendingnum == 18){
                    Globals.GlobalData.vendingnumU1[key] = value;
                  }else if(vendingnum == 19){
                    Globals.GlobalData.vendingnumU2[key] = value;
                  }else if(vendingnum == 20){
                    Globals.GlobalData.vendingnumU3[key] = value;
                  }else if(vendingnum == 21){
                    Globals.GlobalData.vendingnumKVG1[key] = value;
                  }else if(vendingnum == 22){
                    Globals.GlobalData.vendingnumKVG2[key] = value;
                  }else if(vendingnum == 23){
                    Globals.GlobalData.vendingnumKVG3[key] = value;
                  }else if(vendingnum == 24){
                    Globals.GlobalData.vendingnumKV21[key] = value;
                  }else if(vendingnum == 25){
                    Globals.GlobalData.vendingnumKV22[key] = value;
                  }
                }
            }else if(char == "."){
              vendingnum++;
              linecounter--;
            }
            
          }
          linecounter++;
        }


        //Print put maps
        //Used for testing
        Globals.GlobalData.vendingnumPS11.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumPS12.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumLF11.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumLF12.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumLF13.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumLF14.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumLF15.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumCV11.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumCV21.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumCV22.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumL11.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumHH21.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumHH22.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumHH31.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumHH32.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumUCSg1.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumUCS21.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumU1.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumU2.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumU3.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumKVG1.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumKVG2.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumKVG3.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumKV21.forEach((k, v) => print("Key: $k, Value: $v"));
        Globals.GlobalData.vendingnumKV22.forEach((k, v) => print("Key: $k, Value: $v"));
        
        return(1);


        //If not found
        } on FileSystemException catch (e) {
          
          print('File not found: ${e.message}');
          return(0);
        }
    }
      
}
    

