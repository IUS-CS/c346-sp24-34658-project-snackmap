import 'dart:html';
import 'dart:io';


import 'globals.dart';

import 'read_and_write.dart';
import 'item.dart';

class SearchByPrice with ReadAndWrite{
  void getItemList(){
    final myInstance = GetItem();
    myInstance.getData();

    final instance = GetItem();
    instance.sortItem();
  }
//TODO change the last add to have the name in the if 
//TODO add list to map after each iteration
  void setUpList(){
    //Create a list for each snack that has price and location

    for(int indexCounter = 0;indexCounter < GlobalData.snackList.length; indexCounter++){
      List<String> priceAndLocation = [];
        GlobalData.vendingnumPS11.forEach((key,value){
          if('$key' != 'PS 1st floor near bathrooms 1' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
          }
        });

        GlobalData.vendingnumPS12.forEach((key,value){
          if('$key' != 'PS 1st floor near bathrooms 2' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });


      GlobalData.vendingnumLF11.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 1' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });


      GlobalData.vendingnumLF13.forEach((key,value){
      if('$key' != "LF 1st floor near men's bathroom 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });



      GlobalData.vendingnumCV11.forEach((key,value){
      if('$key' != "CV 1st floor near bathrooms 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });



      GlobalData.vendingnumHH22.forEach((key,value){
      if('$key' != "HH 2nd floor near breezeway 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });
      
      

      GlobalData.vendingnumHH32.forEach((key,value){
      if('$key' != "HH 3rd floor in common area 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });

      
        
      
      GlobalData.vendingnumU2.forEach((key,value){
      if('$key' != "UCS and UCN connecting hallway 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });

      
      GlobalData.vendingnumKVG2.forEach((key,value){
      if('$key' != "KV Ground floor next to mini gallery 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      }); 
      
      
      GlobalData.vendingnumKVG3.forEach((key,value){
      if('$key' != "KV Ground floor next to mini gallery 3" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.snackList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      }); 
  
  }


  //Same as above but with drink vending
  for(int indexCounter = 0;indexCounter < GlobalData.drinkList.length;indexCounter++){
        List<String> priceAndLocation = [];
        GlobalData.vendingnumLF12.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 2' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('LF 1st floor near doors 2');
              }
        }
      });


      GlobalData.vendingnumLF12.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 3' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });

      GlobalData.vendingnumLF14.forEach((key,value){
      if('$key' != "LF 1st floor near men's bathroom" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });

      
      GlobalData.vendingnumCV21.forEach((key,value){
      if('$key' != "CV 2nd floor near stairs 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });


      GlobalData.vendingnumCV22.forEach((key,value){
      if('$key' != "CV 2nd floor near stairs" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });


      GlobalData.vendingnumL11.forEach((key,value){
      if('$key' != "Library 1st floor near office" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });


      GlobalData.vendingnumHH21.forEach((key,value){
      if('$key' != "HH 2nd floor near breezeway 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });


      
      GlobalData.vendingnumHH31.forEach((key,value){
      if('$key' != "HH 3rd floor in common area 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });

      GlobalData.vendingnumUCSg1.forEach((key,value){
      if('$key' != "UCS Ground floor near book store" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });
            
      
      GlobalData.vendingnumUCS21.forEach((key,value){
      if('$key' != "UCS 2nd floor in common area 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
               if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });
            
      
      GlobalData.vendingnumU1.forEach((key,value){
      if('$key' != "UCS and UCN connecting hallway 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      });


      GlobalData.vendingnumU3.forEach((key,value){
      if('$key' != "UCS and UCN connecting hallway 3" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      }); 
      
      
      
      GlobalData.vendingnumKVG1.forEach((key,value){
      if('$key' != "KV Ground floor next to mini gallery 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      }); 

      GlobalData.vendingnumKV21.forEach((key,value){
      if('$key' != "KV 2nd floor near elevator 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      }); 

            
      
      GlobalData.vendingnumKV22.forEach((key,value){
      if('$key' != "KV 2nd floor near elevator 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == GlobalData.drinkList[indexCounter]){
                priceAndLocation.add('$value');
                priceAndLocation.add('PS 1st floor near bathrooms 1');
              }
        }
      }); 
              


   //for every item in list store it in a map
  }
}
}
   
    





//For manuel testing
// void main(){
//     final myInstance = GetItem();
//     myInstance.getData();

//     final instance = GetItem();
//     instance.sortItem();
// }