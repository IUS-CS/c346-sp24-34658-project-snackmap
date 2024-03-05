import 'package:flutter/material.dart';
import 'globals.dart';
import 'read_and_write.dart';

class GetItem with ReadAndWrite{
    //Get vending machine data
   void getData() => readFile();

  //Put Items in list
   void sortItem(){

    //get list of items in list
    GlobalData.vendingnumPS11.forEach((key,value){
      if('$key' != 'PS 1st floor near bathrooms 1' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
       });

    
      GlobalData.vendingnumPS12.forEach((key,value){
      if('$key' != 'PS 1st floor near bathrooms 2' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.snackList.contains('$key')){
            GlobalData.snackList.add('$key');
          }
        }
      });


      GlobalData.vendingnumLF11.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 1' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.snackList.contains('$key')){
           GlobalData.snackList.add('$key');
          }
        }
      });


      GlobalData.vendingnumLF12.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 2' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });


      GlobalData.vendingnumLF12.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 3' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });


      GlobalData.vendingnumLF13.forEach((key,value){
      if('$key' != "LF 1st floor near men's bathroom 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.snackList.contains('$key')){
            GlobalData.snackList.add('$key');
          }
        }
      });


     GlobalData.vendingnumLF14.forEach((key,value){
      if('$key' != "LF 1st floor near men's bathroom" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });


      GlobalData.vendingnumCV11.forEach((key,value){
      if('$key' != "CV 1st floor near bathrooms 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.snackList.contains('$key')){
            GlobalData.snackList.add('$key');
          }
        }
      });


      GlobalData.vendingnumCV21.forEach((key,value){
      if('$key' != "CV 2nd floor near stairs 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });


      GlobalData.vendingnumCV22.forEach((key,value){
      if('$key' != "CV 2nd floor near stairs" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });


      GlobalData.vendingnumL11.forEach((key,value){
      if('$key' != "Library 1st floor near office" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });


      GlobalData.vendingnumHH21.forEach((key,value){
      if('$key' != "HH 2nd floor near breezeway 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });


      GlobalData.vendingnumHH22.forEach((key,value){
      if('$key' != "HH 2nd floor near breezeway 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.snackList.contains('$key')){
            GlobalData.snackList.add('$key');
          }
        }
      });
      

      GlobalData.vendingnumHH31.forEach((key,value){
      if('$key' != "HH 3rd floor in common area 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });
      

      GlobalData.vendingnumHH32.forEach((key,value){
      if('$key' != "HH 3rd floor in common area 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.snackList.contains('$key')){
            GlobalData.snackList.add('$key');
          }
        }
      });

      
      
      GlobalData.vendingnumUCSg1.forEach((key,value){
      if('$key' != "UCS Ground floor near book store" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });
            
      
      GlobalData.vendingnumUCS21.forEach((key,value){
      if('$key' != "UCS 2nd floor in common area 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      });
            
      
      GlobalData.vendingnumU1.forEach((key,value){
      if('$key' != "UCS and UCN connecting hallway 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
           GlobalData. drinkList.add('$key');
          }
        }
      });
                  
      
      GlobalData.vendingnumU2.forEach((key,value){
      if('$key' != "UCS and UCN connecting hallway 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.snackList.contains('$key')){
            GlobalData.snackList.add('$key');
          }
        }
      });
                        
      
      GlobalData.vendingnumU3.forEach((key,value){
      if('$key' != "UCS and UCN connecting hallway 3" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      }); 
      
      
      
      GlobalData.vendingnumKVG1.forEach((key,value){
      if('$key' != "KV Ground floor next to mini gallery 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      }); 

      
      GlobalData.vendingnumKVG2.forEach((key,value){
      if('$key' != "KV Ground floor next to mini gallery 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.snackList.contains('$key')){
            GlobalData.snackList.add('$key');
          }
        }
      }); 
      
      
      GlobalData.vendingnumKVG3.forEach((key,value){
      if('$key' != "KV Ground floor next to mini gallery 3" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.snackList.contains('$key')){
            GlobalData.snackList.add('$key');
          }
        }
      }); 
      
      
      GlobalData.vendingnumKV21.forEach((key,value){
      if('$key' != "KV 2nd floor near elevator 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      }); 

            
      
      GlobalData.vendingnumKV22.forEach((key,value){
      if('$key' != "KV 2nd floor near elevator 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!GlobalData.drinkList.contains('$key')){
            GlobalData.drinkList.add('$key');
          }
        }
      }); 


    for (var i = 0; i < GlobalData.drinkList.length; i++) {
    var currentElement = GlobalData.drinkList[i];
    print(currentElement);
   
    }      
    
   }
}


