import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/material.dart';
import 'dart:async';
import 'globals.dart' as Globals;
import 'dart:async';
import 'dart:io';
import 'dart:convert';


  //Reads from the VendingInformation.txt file
  void readFile(){

    File file = File('text_notes/VendingInformation.txt');
    Stream<String> lines = file
        .openRead()
        .transform(utf8.decoder)
        .transform(LineSplitter());
    try {
      lines.listen((String line) {
          int lineCounter = 0;
          String key = "";
          String value = "";
          int vendingnum = 1;
          
          
          //File file = File(filename);
          
          // read file
          //String contents = file.readAsStringSync();
          
          List<String> contentList = line.split(',');
          
          
          // print file
          for (var char in contentList) {
            //Skips comment lines in file
            if(lineCounter > 1){
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
                      Globals.vendingnumPS11[key] = value;
                    }else if(vendingnum ==2){
                      Globals.vendingnumPS12[key] = value;
                    }else if(vendingnum ==3){
                      Globals.vendingnumLF11[key] = value;
                    }else if(vendingnum == 4){
                      Globals.vendingnumLF12[key] = value;
                    }else if(vendingnum == 5){
                      Globals.vendingnumLF13[key] = value;
                    }else if(vendingnum == 6){
                      Globals.vendingnumLF14[key] = value;
                    }else if(vendingnum == 7){
                      Globals.vendingnumLF15[key] = value;
                    }else if(vendingnum == 8){
                      Globals.vendingnumCV11[key] = value;
                    }else if(vendingnum == 9){
                    Globals.vendingnumCV21[key] = value;
                    }else if(vendingnum == 10){
                      Globals.vendingnumCV22[key] = value;
                    }else if(vendingnum == 11){
                      Globals.vendingnumL11[key] = value;
                    }else if(vendingnum == 12){
                    Globals.vendingnumHH21[key] = value;
                    }else if(vendingnum == 13){
                      Globals.vendingnumHH22[key] = value;
                    }else if(vendingnum == 14){
                      Globals.vendingnumHH31[key] = value;
                    }else if(vendingnum == 15){
                      Globals.vendingnumHH32[key] = value;
                    }else if(vendingnum == 16){
                      Globals.vendingnumUCSg1[key] = value;
                    }else if(vendingnum == 17){
                      Globals.vendingnumUCS21[key] = value;
                    }else if(vendingnum == 18){
                      Globals.vendingnumU1[key] = value;
                    }else if(vendingnum == 19){
                      Globals.vendingnumU2[key] = value;
                    }else if(vendingnum == 20){
                      Globals.vendingnumU3[key] = value;
                    }else if(vendingnum == 21){
                      Globals.vendingnumKVG1[key] = value;
                    }else if(vendingnum == 22){
                      Globals.vendingnumKVG2[key] = value;
                    }else if(vendingnum == 23){
                      Globals.vendingnumKVG3[key] = value;
                    }else if(vendingnum == 24){
                      Globals.vendingnumKV21[key] = value;
                    }else if(vendingnum == 25){
                      Globals.vendingnumKV22[key] = value;
                    }
                  }
              }else if(char == "."){
                vendingnum++;
                lineCounter--;
              }
              
            }
            lineCounter++;
          }
      }, onDone: () {
        print('File is now closed.');
      }, onError: (e) {
        print('Error: $e');
      });
    } catch (e) {
      print('An error occurred: $e');
    }
   
    }
    
  




    

