import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:async';
import 'dart:io';
import 'dart:convert';



  
   Future<Map<int, Map<String, String>>> readFile() async {
  var file = File('assets/VendingInformation.txt');
  List<String> lines = await file.readAsLines();
  int lineCounter = 1;
  String key = "";
  String value = "";
  int vendingnum = 1;
  Map<String,String> vendingMap = {};
  Map<int,Map<String,String>> allVendingMap = {};



  for (var line in lines) {
   List<String> contentList = line.split(',');
   for(var char in contentList){
    if(char != "." && char != "?"){
                //If even number
              if(lineCounter % 2 == 0){
                    key = char;
                  }else{
                    value = char;


                    //First time through location, status
                    //Next time payment types, vending machine type
                    //All other item, price

                    //vending machines named based on floor number then number on floor.
                    if(vendingnum == 1){
                      //Stores PS11
                      vendingMap[key] = value;
                      print(123);
                    }else if(vendingnum ==2){
                      //Stores PS12
                      vendingMap[key] = value;
                    }else if(vendingnum ==3){
                      //Stores LF11
                      vendingMap[key] = value;
                    }else if(vendingnum == 4){
                      //Stores LF12
                      vendingMap[key] = value;
                    }else if(vendingnum == 5){
                      //Stores LF13
                      vendingMap[key] = value;
                    }else if(vendingnum == 6){
                      //Stores LF14
                      vendingMap[key] = value;
                    }else if(vendingnum == 7){
                      //Stores LF15
                      vendingMap[key] = value;
                    }else if(vendingnum == 8){
                      //Stores CV11
                      vendingMap[key] = value;
                    }else if(vendingnum == 9){
                    //Stores CV21
                      vendingMap[key] = value;
                    }else if(vendingnum == 10){
                      //Stores CV22
                      vendingMap[key] = value;
                    }else if(vendingnum == 11){
                      //Stores L11
                      vendingMap[key] = value;
                    }else if(vendingnum == 12){
                    //Stores HH21
                      vendingMap[key] = value;
                    }else if(vendingnum == 13){
                      //Stores HH22
                      vendingMap[key] = value;
                    }else if(vendingnum == 14){
                      //Stores HH31
                      vendingMap[key] = value;
                    }else if(vendingnum == 15){
                      //Stores HH32
                      vendingMap[key] = value;
                    }else if(vendingnum == 16){
                      //Stores UCSG1
                      vendingMap[key] = value;
                    }else if(vendingnum == 17){
                      //Stores UCS21
                      vendingMap[key] = value;
                    }else if(vendingnum == 18){
                      //Stores U1
                      vendingMap[key] = value;
                    }else if(vendingnum == 19){
                      //Stores U2
                      vendingMap[key] = value;
                    }else if(vendingnum == 20){
                      //Stores U3
                      vendingMap[key] = value;
                    }else if(vendingnum == 21){
                      //Stores KVG1
                      vendingMap[key] = value;
                    }else if(vendingnum == 22){
                      //Stores KVG2
                      vendingMap[key] = value;
                    }else if(vendingnum == 23){
                      //Stores KVG3
                      vendingMap[key] = value;
                    }else if(vendingnum == 24){
                      //Stores KVG4
                      vendingMap[key] = value;;
                    }else if(vendingnum == 25){
                      //Stores KV11
                      vendingMap[key] = value;
                    }else if(vendingnum == 26){
                      //Stores KV21
                      vendingMap[key] = value;
                    }else if(vendingnum == 27){
                      //Stores KVG22
                      vendingMap[key] = value;
                    }
                  }
              }else if(char == "."){
              
                allVendingMap[vendingnum] = vendingMap;
                vendingMap = {};
                vendingnum++;
                lineCounter--;
              }
              
            }
            lineCounter++;
          }
          return(allVendingMap);


  }
        
 // Map<int,Map<String,String>> 
  //Reads from the VendingInformation.txt file
  // Map<int,Map<String,String>>  readFile(){
  //   final file = File('assets/VendingInformation.txt');

  //   //map of all maps
  //   Map<int,Map<String,String>> allVendingMap = {};
  //   //temp map of smaller maps
  //   Map<String,String> vendingMap = {};
  
  //   Stream<List<int>> inputStream = file.openRead();

  // inputStream
  //   .transform(utf8.decoder)       // Decode bytes to UTF-8.
  //   .transform(new LineSplitter()) // Convert stream to individual lines.
  //   .listen((String line) {        // Process results.
  //         int lineCounter = 0;
  //         String key = "";
  //         String value = "";
  //         int vendingnum = 1;

  //         print("the cat");
  //         //File file = File(filename);
          
  //         // read file
  //         //String contents = file.readAsStringSync();
          
  //         List<String> contentList = line.split(',');
          
        
  //         // print file

  //         for (var char in contentList) {
  //           //Skips comment lines in file
           
  //           if(lineCounter >= 0){
              
  //               if(char != "." && char != "?"){
  //               //If even number
  //                 if(lineCounter % 2 == 0){
  //                   key = char;
  //                 }else{
  //                   value = char;


  //                   //First time through location, status
  //                   //Next time payment types, vending machine type
  //                   //All other item, price

  //                   //vending machines named based on floor number then number on floor.
  //                   if(vendingnum == 1){
  //                     //Stores PS11
  //                     vendingMap[key] = value;
  //                     print(123);
  //                   }else if(vendingnum ==2){
  //                     //Stores PS12
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum ==3){
  //                     //Stores LF11
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 4){
  //                     //Stores LF12
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 5){
  //                     //Stores LF13
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 6){
  //                     //Stores LF14
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 7){
  //                     //Stores LF15
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 8){
  //                     //Stores CV11
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 9){
  //                   //Stores CV21
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 10){
  //                     //Stores CV22
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 11){
  //                     //Stores L11
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 12){
  //                   //Stores HH21
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 13){
  //                     //Stores HH22
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 14){
  //                     //Stores HH31
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 15){
  //                     //Stores HH32
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 16){
  //                     //Stores UCSG1
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 17){
  //                     //Stores UCS21
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 18){
  //                     //Stores U1
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 19){
  //                     //Stores U2
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 20){
  //                     //Stores U3
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 21){
  //                     //Stores KVG1
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 22){
  //                     //Stores KVG2
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 23){
  //                     //Stores KVG3
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 24){
  //                     //Stores KVG4
  //                     vendingMap[key] = value;;
  //                   }else if(vendingnum == 25){
  //                     //Stores KV11
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 26){
  //                     //Stores KV21
  //                     vendingMap[key] = value;
  //                   }else if(vendingnum == 27){
  //                     //Stores KVG22
  //                     vendingMap[key] = value;
  //                   }
  //                 }
  //             }else if(char == "."){
  //               allVendingMap[vendingnum] = vendingMap;
              
  //               vendingnum++;
  //               lineCounter--;
  //             }
              
  //           }
  //           lineCounter++;
  //         }
  //     }, onDone: () {
  //       print('File is now closed.');
  //     }, onError: (e) {
  //       print('Error: $e');
  //     });
  //   return(allVendingMap);
  // }
   
    
  




    

