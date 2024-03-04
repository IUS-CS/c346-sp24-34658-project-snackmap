import 'package:fluttersnackmap/globals.dart' as Globals;

import 'package:fluttersnackmap/read_and_write.dart';

class getItem with ReadAndWrite{
    //Get vending machine data
   void getData() => readFileHelper( 'doc/FileInformation/VendingInformation.txt');

  //Put Items in list
   List<String> snackList = [];
   List<String> drinkList = [];
   void sortItem(){
    String? vendingType = Globals.GlobalData.vendingnumPS11['Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'];
    
    //get list of items in list
    Globals.GlobalData.vendingnumPS11.forEach((key,value){
      if('$key' != 'PS 1st floor near bathrooms 1' && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!drinkList.contains('$key')){
            drinkList.add('$key');
          }
        }
      });

    
      Globals.GlobalData.vendingnumPS12.forEach((key,value){
      if('$key' != 'PS 1st floor near bathrooms 2' && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!snackList.contains('$key')){
            snackList.add('$key');
          }
        }
      });


      Globals.GlobalData.vendingnumLF11.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 1' && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!snackList.contains('$key')){
            snackList.add('$key');
          }
        }
      });


      Globals.GlobalData.vendingnumLF12.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 2' && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!drinkList.contains('$key')){
            drinkList.add('$key');
          }
        }
      });


      Globals.GlobalData.vendingnumLF12.forEach((key,value){
      if('$key' != 'LF 1st floor near doors 3' && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!drinkList.contains('$key')){
            drinkList.add('$key');
          }
        }
      });


      Globals.GlobalData.vendingnumLF13.forEach((key,value){
      if('$key' != "LF 1st floor near men's bathroom 1" && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!snackList.contains('$key')){
            snackList.add('$key');
          }
        }
      });


      Globals.GlobalData.vendingnumLF14.forEach((key,value){
      if('$key' != "LF 1st floor near men's bathroom" && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!drinkList.contains('$key')){
            drinkList.add('$key');
          }
        }
      });


            Globals.GlobalData.vendingnumCV11.forEach((key,value){
      if('$key' != "CV 1st floor near bathrooms 1" && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!snackList.contains('$key')){
            snackList.add('$key');
          }
        }
      });


      Globals.GlobalData.vendingnumCV21.forEach((key,value){
      if('$key' != "CV 2nd floor near stairs 1" && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!drinkList.contains('$key')){
            drinkList.add('$key');
          }
        }
      });


      Globals.GlobalData.vendingnumCV22.forEach((key,value){
      if('$key' != "CV 2nd floor near stairs" && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!drinkList.contains('$key')){
            drinkList.add('$key');
          }
        }
      });


      Globals.GlobalData.vendingnumL11.forEach((key,value){
      if('$key' != "Library 1st floor near office" && '$key' != 'Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay'){
          if(!drinkList.contains('$key')){
            drinkList.add('$key');
          }
        }
      });
   }
}



//HH 2nd floor near breezeway 1,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Drink,Coca-Cola,$1.75,COca-Cola Zero,$1.75,Coca-Cola Cherry,$1.75,Coca-Cola Diet,$1.75,Sprite,$1.75,Mello Yello,$1.75
//HH 2nd floor near breezeway 2,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Snack,Grippos BBQ,$1.50,Oatmeal Cream Pie,$1.25,Reese's Cups,$2.00,Reese's Pieces,$2.00,Baby Ruth,$2.00,Belvita Crunchy,$2.00,Twix,$2.00,3 Musketeers,$2.00,Snickers,$2.00,M&M Peanuts,$2.00,Reese's Take 5,$2.00,Butter Finger,$2.00,Nature Valley Crunchy,$2.00,Lance Peanut Butter Crackers,$1.25, Salted Peanuts,$2.00,Sweet 'N Spicy Mix,$200,Oreo,$200,Pork and Beef Stick,$200,Skittles,$200,Starburst Mini,$200,Cliff Chocolate Chip,$200,Rice Krispie Treat,$200,Pop-Tart Strawberry,$2.25,Mamba,$2.25,Chocolate Chip Cookies,$2.25,5 Spearmint,$2.00
//HH 3rd floor in common area 1,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Drink,Coca-Cola,$1.75,Coca-Cola Zero,$1.75,Coca-Cola Diet,$1.75,Coca-Cola Cherry,$1.75,Sprite,$1.75,Pibb Xtra,$1.75
// HH 3rd floor in common area 2,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Snack,Pork Rinds BBQ,$1.50,Reese's Cups,$2.00,Reese's Pieces,$2.00,Baby Ruth,$2.00,Skittles,$2.00,3 Musketeers,$2.00,Nature Valley Crunchy,$2.00,Lance Grilled Cheese Crackers,$1.25,Mamba,$1.25,Nutter Butter,$2.00,Rice Krispie Treat,$2.00,Life Savers,$1.00
// UCS Ground floor near book store,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Drink,Coca-Cola,$1.75,Coca-Cola Zero,$1.75,Coca-Cola Cherry,$1.75,Coca-Cola Diet,$1.75,Sprite,$1.75,Dasani Water,$1.75
// UCS 2nd floor in common area 1,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Drink,Coca-Cola,$1.75,Coca-Cola Zero,$1.75,Coca-Cola Diet,$1.75,Sprite,$1.75,Dasani Water,$1.75
// UCS and UCN connecting hallway 1,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Drink,Dasani Water,$1.75, Minute Maid Lemonade,$1.75,Monster Original Energy,$2.50,Monster Java Coffee Energy,$2.50,Monster Zero Ultra White Energy,$2.50,Smart Water,$2.25,Powerade Blue Raspberry Cherry,$2.25
// UCS and UCN connecting hallway 2,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Snack,Cheez-It,$1.50,Funyuns,$1.50,Ruffles Cheddar,$1.50,Pork Rinds BBQ,$1.50,Ruffles Oven Backed Cheddar,$1.50,Lays Classic,$1.50,Cheetos,$1.50,Doritos Nacho Cheese,$1.50,Fritos,$1.50,Cheetos Flamin’ Hot,$1.50,Lays Classic Oven Baked,$1.50,Oatmeal Cream Pie,$1.50,Lays Sour Cream and Onion,$1.50,Doritos Cool Ranch,$1.50,Lays Oven Backed BBQ,$1.50,Reese's Cups,$2.00,Reese's Pieces,$2.00,Hersey's,$2.00,Belvita Crunchy,$2.00,M&M’s Peanut Butter,$2.00,Twix,$2.00,3 Musketeers,$2.00,Snickers,$2.00,M&M's Peanuts,$2.00,Butter Finger,$2.00,Nature Valley Crunchy,$2.00,Lance Grilled Cheese Crackers,$1.25, Lance peanut Butter Crackers,$1.25,Baby Ruth,$2.00,Peanuts,$2.00,Sweet N' Salty Mix,$2.00,Oreo,$2.00,Pork and Beef Stick,$2.00,Skittles,$2.00,Starburst Mini,$2.00,Nutter Butter,$2.00,Rice KrispieTreat,$2.00,Jack Links Beef Teriyaki Bites,$3.00, Chocolate Chip Cookie,$3.00,Pop-Tart Cherry,$1.25
// UCS and UCN connecting hallway 3,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Drink,Coca-Cola,$1.75,Coca-Cola Zero,$1.75,Coca-Cola Diet,$1.75,Sprite,$1.75
// KV Ground floor next to mini gallery 1,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Drink,Coca-Cola,$1.75,Coca-Cola Zero,$1.75,Coca-Cola Diet,$1.75,Sprite,$1.75,Dasani Water,$1.75,Monster Original Energy,$2.50
// KV Ground floor next to mini gallery 2,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Snack
// KV Ground floor next to mini gallery 3,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Snack
// KV 2nd floor near elevator 1,Working,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Drink,Coca-Cola,$1.75,Coca-Cola Zero,$1.75,Coca-Cola Diet,$1.75,Sprite,$1.75,Mello Yello,$1.75
//KV 2nd floor near elevator 2,Out Of Order,Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay,Drink,Dasani Water,$1.75, Monster Original Energy,$2.50,Monster Zero Ultra Energy,$2.50


