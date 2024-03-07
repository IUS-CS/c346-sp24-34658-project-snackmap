import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:async';
import 'dart:io';
import 'dart:convert';


  //Reads from the VendingInformation.txt file
   Map<int,Map<String,String>> readFile(){
    int lineCounter = 0;
    String key = "";      
    String value = "";
    int vendingnum = 1;
    Map<String,String> vendingMap = {};
    Map<int,Map<String,String>> allVendingMap = {};
    try {
        var contents = File('assets/VendingInformation.txt').readAsStringSync();

          
          
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
                    value = char;


                    //First time through location, status
                    //Next time payment types, vending machine type
                    //All other item, price

                    //vending machines named based on floor number then number on floor.
                    //vending machines named based on floor number then number on floor.
                    
                      //Stores individual maps.
                      vendingMap[key] = value;
                  
                  }
              }else if(char == ' '){
                allVendingMap[vendingnum] = vendingMap;
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
    
  