import 'dart:io';

void main() {
  //Reads from the VendingInformation.txt file
    void readfile(){
    //Stores number of lines
    var vendingnumps11 = Map<String, String>();
    var vendingnumps21 = Map<String, String>();
    var vendingnumlf11 = Map<String, String>();
    var vendingnumlf21 = Map<String, String>();
    var vendingnumlf31 = Map<String, String>();
    var vendingnumcv11 = Map<String, String>();
    var vendingnumcv21 = Map<String, String>();
    var vendingnumcv22 = Map<String, String>();
    var vendingnuml11 = Map<String, String>();


    int linecounter = 0;
    String key = "";
    String value = "";
    int vendingnum = 1;
    
    
    File file = File('doc/FileInformation/VendingInformation.txt');
    
    // read file
    String contents = file.readAsStringSync();
    
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

              //First time through location, number vending machine in area
              //Next time payment types, vending machine type
              //All other item, price

              //vending machines named based on floor number then number on floor.
              if(vendingnum == 1){
                vendingnumps11[key] = value;
              }else if(vendingnum ==2){
                vendingnumps21[key] = value;
              }else if(vendingnum ==3){
                vendingnumlf11[key] = value;
              }else if(vendingnum == 4){
                vendingnumlf21[key] = value;
              }else if(vendingnum == 4){
                vendingnumlf31[key] = value;
              }else if(vendingnum == 4){
                vendingnumcv11[key] = value;
              }else if(vendingnum == 4){
                vendingnumcv21[key] = value;
              }else if(vendingnum == 4){
                vendingnumcv22[key] = value;
              }else if(vendingnum == 4){
                vendingnuml11[key] = value;
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
    vendingnumps11.forEach((k, v) => print("Key: $k, Value: $v"));
    vendingnumps21.forEach((k, v) => print("Key: $k, Value: $v"));
    vendingnumlf11.forEach((k, v) => print("Key: $k, Value: $v"));
    vendingnumlf21.forEach((k, v) => print("Key: $k, Value: $v"));
    vendingnumlf31.forEach((k, v) => print("Key: $k, Value: $v"));
    vendingnumcv11.forEach((k, v) => print("Key: $k, Value: $v"));
    vendingnumcv21.forEach((k, v) => print("Key: $k, Value: $v"));
    vendingnumcv22.forEach((k, v) => print("Key: $k, Value: $v"));
    vendingnuml11.forEach((k, v) => print("Key: $k, Value: $v"));
    
  }


  readfile();
}

