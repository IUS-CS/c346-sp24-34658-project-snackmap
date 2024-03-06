//import 'dart:html';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'dart:async';

import 'globals.dart' as Globals;


class SearchByPrice{

  Map<String,List> priceMap = {};

  Map<String,List> setUpList(){
    
    //Create a list for each snack that has price and location
    
    
    for(int indexCounter = 0;indexCounter < Globals.snackList.length; indexCounter++){
      List<String> priceAndLocation = [];
        Globals.vendingnumPS11.forEach((key,value){
          if('$key' != 'PS 1st floor near bathrooms 1' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.snackList[indexCounter]){
                if(priceAndLocation.length > 0){
                  if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add('PS 1st floor near bathrooms 1');
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,'PS 1st floor near bathrooms 1');

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add('PS 1st floor near bathrooms 1');
            }
          }
              
          }

        });

        Globals.vendingnumPS12.forEach((key,value){
          if('$key' != 'PS 1st floor near bathrooms 2' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if(priceAndLocation.length > 0){
              if('$key' == Globals.snackList[indexCounter]){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add('PS 1st floor near bathrooms 2');
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,'PS 1st floor near bathrooms 2');

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add('PS 1st floor near bathrooms 2');
            }
          }
        }
      });


      Globals.vendingnumLF11.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 1' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.snackList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add('LF 1st floor near doors 1');
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,'LF 1st floor near doors 1');

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add('LF 1st floor near doors 1');
            }
          }
        }
      });


      Globals.vendingnumLF13.forEach((key,value){
      if('$key' != "LF 1st floor near men's bathroom 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.snackList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("LF 1st floor near men's bathroom 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"LF 1st floor near men's bathroom 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("LF 1st floor near men's bathroom 1" );
            }
          }
        }
      });



      Globals.vendingnumCV11.forEach((key,value){
      if('$key' != "CV 1st floor near bathrooms 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.snackList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("CV 1st floor near bathrooms 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"CV 1st floor near bathrooms 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("CV 1st floor near bathrooms 1");
            }
          }
        }
      });



      Globals.vendingnumHH22.forEach((key,value){
      if('$key' != "HH 2nd floor near breezeway 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.snackList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("HH 2nd floor near breezeway 2");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"HH 2nd floor near breezeway 2");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("HH 2nd floor near breezeway 2" );
            }
          }
        }
      });
      
      

      Globals.vendingnumHH32.forEach((key,value){
      if('$key' != "HH 3rd floor in common area 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.snackList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("HH 3rd floor in common area 2");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"HH 3rd floor in common area 2");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("HH 3rd floor in common area 2");
            }
          }
        }
      });

      
        
      
      Globals.vendingnumU2.forEach((key,value){
      if('$key' != "UCS and UCN connecting hallway 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.snackList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("UCS and UCN connecting hallway 2");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"UCS and UCN connecting hallway 2");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("UCS and UCN connecting hallway 2");
            }
          }
        }
      });

      
      Globals.vendingnumKVG2.forEach((key,value){
      if('$key' != "KV Ground floor next to mini gallery 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.snackList[indexCounter]){
                if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("KV Ground floor next to mini gallery 2");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"KV Ground floor next to mini gallery 2");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("KV Ground floor next to mini gallery 2");
            }
          }
        }
      }); 
      
      
      Globals.vendingnumKVG3.forEach((key,value){
      if('$key' != "KV Ground floor next to mini gallery 3" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.snackList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("KV Ground floor next to mini gallery 3");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"KV Ground floor next to mini gallery 3");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("KV Ground floor next to mini gallery 3");
            }
          }
        }
      }); 

       //for every item in list store it in a map

    priceMap[Globals.snackList[indexCounter]] = priceAndLocation;
  
  }




  //Same as above but with drink vending
  for(int indexCounter = 0;indexCounter < Globals.drinkList.length;indexCounter++){
        List<String> priceAndLocation = [];
        Globals.vendingnumLF12.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 2' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add('LF 1st floor near doors 2');
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,'LF 1st floor near doors 2');

                }
               }else{
              priceAndLocation.add('$value');
              priceAndLocation.add('LF 1st floor near doors 2');
            }
          }
        }
      });


      Globals.vendingnumLF12.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 3' || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add('LF 1st floor near doors 3');
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,'LF 1st floor near doors 3');

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add('LF 1st floor near doors 3');
            }
          }
        }
      });

      Globals.vendingnumLF14.forEach((key,value){
      if('$key' != "LF 1st floor near men's bathroom" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("LF 1st floor near men's bathroom" );
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"LF 1st floor near men's bathroom" );

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("LF 1st floor near men's bathroom" );
            }
          }
        }
      });

      
      Globals.vendingnumCV21.forEach((key,value){
      if('$key' != "CV 2nd floor near stairs 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("CV 2nd floor near stairs 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"CV 2nd floor near stairs 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("CV 2nd floor near stairs 1");
            }
          }
        }
      });


      Globals.vendingnumCV22.forEach((key,value){
      if('$key' != "CV 2nd floor near stairs 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("CV 2nd floor near stairs 2");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"CV 2nd floor near stairs 2");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add( "CV 2nd floor near stairs 2");
            }
          }
        }
      });


      Globals.vendingnumL11.forEach((key,value){
      if('$key' != "Library 1st floor near office" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("Library 1st floor near office");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"Library 1st floor near office");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("Library 1st floor near office");
            }
          }
        }
      });


      Globals.vendingnumHH21.forEach((key,value){
      if('$key' != "HH 2nd floor near breezeway 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add( "HH 2nd floor near breezeway 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1, "HH 2nd floor near breezeway 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("HH 2nd floor near breezeway 1");
            }
          }
        }
      });


      
      Globals.vendingnumHH31.forEach((key,value){
      if('$key' != "HH 3rd floor in common area 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("HH 3rd floor in common area 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"HH 3rd floor in common area 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("HH 3rd floor in common area 1");
            }
          }
        }
      });

      Globals.vendingnumUCSg1.forEach((key,value){
      if('$key' != "UCS Ground floor near book store" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("UCS Ground floor near book store");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"UCS Ground floor near book store");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("UCS Ground floor near book store");
            }
          }
        }
      });
            
      
      Globals.vendingnumUCS21.forEach((key,value){
      if('$key' != "UCS 2nd floor in common area 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
               if('$key' == Globals.drinkList[indexCounter]){
                if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("UCS 2nd floor in common area 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"UCS 2nd floor in common area 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("UCS 2nd floor in common area 1");
            }
          }
        }
      });
            
      
      Globals.vendingnumU1.forEach((key,value){
      if('$key' != "UCS and UCN connecting hallway 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("UCS and UCN connecting hallway 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"UCS and UCN connecting hallway 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("UCS and UCN connecting hallway 1");
            }
          }
        }
      });


      Globals.vendingnumU3.forEach((key,value){
      if('$key' != "UCS and UCN connecting hallway 3" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("UCS and UCN connecting hallway 3");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"UCS and UCN connecting hallway 3");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("UCS and UCN connecting hallway 3");
            }
          }
        }
      }); 
      
      
      
      Globals.vendingnumKVG1.forEach((key,value){
      if('$key' != "KV Ground floor next to mini gallery 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                   if(priceAndLocation.length > 0){
                   if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("KV Ground floor next to mini gallery 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"KV Ground floor next to mini gallery 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("KV Ground floor next to mini gallery 1");
            }
          }
        }
      }); 

      Globals.vendingnumKVG4.forEach((key,value){
      if('$key' != "KV ground floor near stairs 4" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("KV ground floor near stairs 4");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"KV ground floor near stairs 4");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("KV ground floor near stairs 4" );
            }
          }
        }
      }); 


      Globals.vendingnumKV11.forEach((key,value){
      if('$key' != "KV 1st floor near stairs 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("KV 1st floor near stairs 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"KV 1st floor near stairs 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("KV 1st floor near stairs 1");
            }
          }
        }
      }); 

      

      Globals.vendingnumKV21.forEach((key,value){
      if('$key' != "KV 2nd floor near elevator 1" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                 if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("KV 2nd floor near elevator 1");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"KV 2nd floor near elevator 1");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("KV 2nd floor near elevator 1");
            }
          }
        }
      }); 

            
      
      Globals.vendingnumKV22.forEach((key,value){
      if('$key' != "KV 2nd floor near elevator 2" || '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
              if('$key' == Globals.drinkList[indexCounter]){
                if(priceAndLocation.length > 0){
                 if(double.parse('$value') >= double.parse(priceAndLocation[0])){
                    priceAndLocation.add('$value');
                    priceAndLocation.add("KV 2nd floor near elevator 2");
                }else if(double.parse('$value') < double.parse(priceAndLocation[0])){
                  priceAndLocation.insert(0, '$value');
                  priceAndLocation.insert(1,"KV 2nd floor near elevator 2");

                }
              }else{
              priceAndLocation.add('$value');
              priceAndLocation.add("KV 2nd floor near elevator 2");
            }
          }
        }
      }); 


     //for every item in list store it in a map
      priceMap[Globals.drinkList[indexCounter]] = priceAndLocation;    



  }
  return priceMap;
}

Map<String,List> sortPrice(Map<String,List> priceMap){
  final sortedKeys = priceMap.keys.toList()..sort();
 

  // Create a new map with the sorted keys and their corresponding values
  final sortedMap = Map.fromEntries(sortedKeys.map((key) => MapEntry(key, priceMap[key])));
  return priceMap;
}
}
   
    





//For manuel testing
// void main(){
//     final myInstance = GetItem();
//     myInstance.getData();

//     final instance = GetItem();
//     instance.sortItem();
// }