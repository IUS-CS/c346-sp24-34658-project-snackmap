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


//Will be full stock once we know what full stock is


class addFullStockData{
    //Get vending machine data
    void callAllFunctions(){
      PS11Vending();
      PS12Vending();
      LF11Vending();
      LF12Vending();
      LF13Vending();
      LF14Vending();
      LF15Vending();
      CV11Vending();
      CV21Vending();
      CV22Vending();
      L11Vending();
      HH21Vending();
      HH22Vending();
      HH31Vending();
      HH32Vending();
      UCSg1Vending();
      UCS21Vending();
      U1Vending();
      U2Vending();
      U3Vending();
      KVG1Vending();
      KVG2Vending();
      KVG3Vending();
      KVG4Vending();
      KV11Vending();
      KV21Vending();
      KV22Vending();
      snackListAdd();
      drinkListAdd();
    }
    void PS11Vending(){
      Globals.vendingnumPS11 = {};
      Globals.vendingnumPS11["PS 1st floor near bathrooms 1"] = "Working";
      Globals.vendingnumPS11["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
      Globals.vendingnumPS11["Coca-Cola"] = "1.75";
      Globals.vendingnumPS11["Coca-Cola Zero"] = "1.75";
      Globals.vendingnumPS11["Coca-Cola Cherry"] = "1.75";
      Globals.vendingnumPS11["Coca-Cola Diet"] = "1.75";
      Globals.vendingnumPS11["Sprite"] = "1.75";
      Globals.vendingnumPS11["Dasani"] = "1.75";
    }
    
    void PS12Vending(){
      Globals.vendingnumPS12 = {};
      Globals.vendingnumPS12["PS 1st floor near bathrooms 2"] = "Working";
      Globals.vendingnumPS12["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Snack";
      Globals.vendingnumPS12["Ruffles Cheddar"] = "1.50";
      Globals.vendingnumPS12["Lays Sour Cream and Onion"] = "1.50";
      Globals.vendingnumPS12["Grippos BBQ"] = "1.50";
      Globals.vendingnumPS12["Pork Rinds BBQ"] = "1.50";
      Globals.vendingnumPS12["Lays Classic"] = "1.50";
      Globals.vendingnumPS12["Cheetos Crunchy"] = "1.50";
      Globals.vendingnumPS12["Doritos Nacho Cheese"] = "1.50";
      Globals.vendingnumPS12["Fritos Chili Cheese"] = "1.50";
      Globals.vendingnumPS12["Miss Vickies Spicy Dill Pickle"] = "1.50";
      Globals.vendingnumPS12["Doritos Spicy Sweet Chili"] = "1.50";
      Globals.vendingnumPS12["Reese's Cups"] = "2.00";
      Globals.vendingnumPS12["Reese's Pieces"] = "2.00";
      Globals.vendingnumPS12["Baby Ruth"] = "2.00";
      Globals.vendingnumPS12["Sweet 'N Spicy Mix"] = "2.00";
      Globals.vendingnumPS12["Lance Grilled Cheese Crackers"] = "2.00";
      Globals.vendingnumPS12["Lance Peanut Butter Crackers"] = "2.00";
      Globals.vendingnumPS12["Skittles"] = "2.00";
      Globals.vendingnumPS12["Nutter Butter"] = "2.00";
      Globals.vendingnumPS12["Rice Krispie Treat"] = "2.00";
      Globals.vendingnumPS12["Pop-Trart Strawberry"] = "3.00";
      Globals.vendingnumPS12["Chocolate Chip"] = "3.00";
      Globals.vendingnumPS12["Honey Bun"] = "3.00";
      Globals.vendingnumPS12["Reese's Cookie"] = "3.00";
    }

    void LF11Vending(){
      Globals.vendingnumLF11 = {};
      Globals.vendingnumLF11["LF 1st floor near doors 1"] = "Working";
      Globals.vendingnumLF11["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Snack";
      Globals.vendingnumLF11["Funyuns"] = "1.50";
      Globals.vendingnumLF11["Cheetos"] = "1.50";
      Globals.vendingnumLF11["Lays Classic OvenBaked"] = "1.50";
      Globals.vendingnumLF11["Lays Sour Cream and Onion"] = "1.50";
      Globals.vendingnumLF11["Doritos Cool Ranch"] = "1.50";
      Globals.vendingnumLF11["Doritos BBQ"] = "1.50";
      Globals.vendingnumLF11["M&M's Peanuts"] = "1.50";
      Globals.vendingnumLF11["M&M's Peanut Butter"] = "1.50";
      Globals.vendingnumLF11["Nature Valley Crunchy"] = "1.50";
      Globals.vendingnumLF11["Reese's Cups"] = "2.00";
      Globals.vendingnumLF11["Reese's Pieces"] = "2.00";
      Globals.vendingnumLF11["Baby Ruth"] = "2.00";
      Globals.vendingnumLF11["Mamba"] = "2.00";
      Globals.vendingnumLF11["Lance Peanut Butter Crackers"] = "2.00";
      Globals.vendingnumLF11["Starburst Mini"] = "2.00";
      Globals.vendingnumLF11["Skittles"] = "2.00";
      Globals.vendingnumLF11["Nutter Butter"] = "2.00";
      Globals.vendingnumLF11["Jack Link's Prime Rib"] = "3.00";
      Globals.vendingnumLF11["Jack Link's Beef Teriyaki Bites"] = "3.00";
    }

  void LF12Vending(){
    Globals.vendingnumLF12 = {};
    Globals.vendingnumLF12["LF 1st floor near doors 2"] = "Working";
    Globals.vendingnumLF12["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumLF12["Coca-Cola"] = "2.50";
    Globals.vendingnumLF12["Coca-Cola Zero"] = "2.50";
    Globals.vendingnumLF12["Coca-Cola Cherry"] = "2.50";
    Globals.vendingnumLF12["Coca-Cola Diet"] = "2.50";
    Globals.vendingnumLF12["Sprite"] = "2.50";
    Globals.vendingnumLF12["Pibb Xtra"] = "2.50";
  }

  void LF13Vending(){
    Globals.vendingnumLF13 = {};
    Globals.vendingnumLF13["LF 1st floor near doors 3"] = "Working";
    Globals.vendingnumLF13["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumLF13["Dasani Water"] = "1.75";
    Globals.vendingnumLF13["Monster Original Energy"] = "2.50";
    Globals.vendingnumLF13["Monster Zero Ultra Energy"] = "2.50";
    Globals.vendingnumLF13["Powerade Blue Raspberry Cherry"] = "2.00";
    Globals.vendingnumLF13["Powerade Fruit Punch"] = "2.00";
  }


  void LF14Vending(){
    Globals.vendingnumLF14 = {};
    Globals.vendingnumLF14["LF 1st floor near men's bathroom 1"] = "Working";
    Globals.vendingnumLF14["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Snack";
    Globals.vendingnumLF14["Ruffles Cheddar"] = "1.50";
    Globals.vendingnumLF14["Lays Sour Cream and Onion"] = "1.50";
    Globals.vendingnumLF14["Grippos BBQ"] = "1.50";
    Globals.vendingnumLF14["Pork Rinds"] = "1.50";
    Globals.vendingnumLF14["Ruffles Oven Baked Cheddar"] = "1.50";
    Globals.vendingnumLF14["Lays Original"] = "1.50";
    Globals.vendingnumLF14["Cheetos"] = "1.50";
    Globals.vendingnumLF14["Doritos Nacho Cheese"] = "1.50";
    Globals.vendingnumLF14["Fritos Chili Cheese"] = "1.50";
    Globals.vendingnumLF14["Mis Vickies Spicy Dill Pickle"] = "1.50";
    Globals.vendingnumLF14["Cheetos Flamin’ Hot"] = "1.50";
    Globals.vendingnumLF14["Doritos Cool Ranch"] = "1.50";
    Globals.vendingnumLF14["Doritos Spicy Sweet Chili"] = "1.50";
    Globals.vendingnumLF14["Fritos Twist"] = "1.50";
    Globals.vendingnumLF14["Reese's Cups"] = "2.00";
    Globals.vendingnumLF14["Reese's Pieces"] = "2.00";
    Globals.vendingnumLF14["Baby Ruth"] = "2.00";
    Globals.vendingnumLF14["Sweet 'N Spicy Mix"] = "2.00";
    Globals.vendingnumLF14["Starburst Mini"] = "2.00";
    Globals.vendingnumLF14["Lance Grilled Cheese Crackers"] = "1.25";
    Globals.vendingnumLF14["Lance Peanut Butter Crackers"] = "1.25";
    Globals.vendingnumLF14["Skittles"] = "2.00";
    Globals.vendingnumLF14["Nutter Butter"] = "2.00";
    Globals.vendingnumLF14["Rice Krispie Treat"] = "2.00";
    Globals.vendingnumLF14["Pop-Tarts Strawberry"] = "3.00";
    Globals.vendingnumLF14["Chocolate Chip Cookies"] = "3.00";
    Globals.vendingnumLF14["Reese's Cookies"] = "3.00";
}


  void LF15Vending(){
    Globals.vendingnumLF15 = {};
    Globals.vendingnumLF15["LF 1st floor near men's bathroom 2"] = "Working";
    Globals.vendingnumLF15["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumLF15["Coca-Cola"] = "2.50";
    Globals.vendingnumLF15["Coca-Cola Cherry"] = "2.50";
    Globals.vendingnumLF15["Coca-Cola Diet"] = "2.50";
    Globals.vendingnumLF15["Sprite"] = "2.50";
    Globals.vendingnumLF15["Dasani Water"] = "2.50";
}

  void CV11Vending(){
    Globals.vendingnumCV11 = {};
    Globals.vendingnumCV11["CV 1st floor near bathrooms 1"] = "Working";
    Globals.vendingnumCV11["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Snack";
    Globals.vendingnumCV11["Cheez-It"] = "1.50";
    Globals.vendingnumCV11["Funyuns"] = "1.50";
    Globals.vendingnumCV11["Grippos BBQ"] = "1.50";
    Globals.vendingnumCV11["Pork Rinds BBQ"] = "1.50";
    Globals.vendingnumCV11["Doritos Spicy Sweet Chili"] = "1.50";
    Globals.vendingnumCV11["Lays Original"] = "1.50";
    Globals.vendingnumCV11["Cheetos Puffs"] = "1.50";
    Globals.vendingnumCV11["Doritos Nacho Cheese"] = "1.50";
    Globals.vendingnumCV11["Fritos BBQ Chips"] = "1.50";
    Globals.vendingnumCV11["Lays Oven Baked"] = "1.50";
    Globals.vendingnumCV11["Oatmeal Cream Pie"] = "1.50";
    Globals.vendingnumCV11["Doritos Cool Ranch"] = "1.50";
    Globals.vendingnumCV11["Ruffles Cheddar Cheese"] = "1.50";
    Globals.vendingnumCV11["Miss Vickies Spicy Dill Pickle Chips"] = "1.50";
    Globals.vendingnumCV11["Lays BBQ Oven Baked"] = "1.50";
    Globals.vendingnumCV11["Lays Sour Cream and Onion"] = "1.50";
    Globals.vendingnumCV11["Cheetos Crunchy Flamin’ Hot"] = "1.50";
    Globals.vendingnumCV11["Doritos BBQ"] = "1.50";
    Globals.vendingnumCV11["Ruffles Oven Baked Cheddar and Sour Cream"] = "1.50";
    Globals.vendingnumCV11["Lance Grilled Cheese Crackers"] = "2.00";
    Globals.vendingnumCV11["Lance Peanut Butter Crackers"] = "2.00";
    Globals.vendingnumCV11["M&M’s Peanut Butter"] = "2.00";
    Globals.vendingnumCV11["Peanuts"] = "2.00";
    Globals.vendingnumCV11["Starburst Mini"] = "2.00";
    Globals.vendingnumCV11["Twix"] = "2.00";
    Globals.vendingnumCV11["Beef Sticks"] = "2.00";
    Globals.vendingnumCV11["Skittles"] = "2.00";
    Globals.vendingnumCV11["Nutter Butter"] = "2.00";
    Globals.vendingnumCV11["Rice Krispie Treat"] = "2.00";
    Globals.vendingnumCV11["Jack Link's Beef Teriyaki Bites"] = "3.00";
}

  void CV21Vending(){
    Globals.vendingnumCV21 = {};
    Globals.vendingnumCV21["CV 2nd floor near stairs 1"] = "Out of Order";
    Globals.vendingnumCV21["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumCV21["Dasani Water"] = "1.75";
    Globals.vendingnumCV21["Minute Maid Lemonade"] = "1.75";
    Globals.vendingnumCV21["Mountain Berry Blast"] = "2.00";
    Globals.vendingnumCV21["Monster Original Energy"] = "2.50";
    Globals.vendingnumCV21["Monster Zero Ultra Energy"] = "2.50";
    Globals.vendingnumCV21["Monster Java Coffee Energy"] = "2.50";
}

  void CV22Vending(){
    Globals.vendingnumCV22 = {};
    Globals.vendingnumCV22["CV 2nd floor near stairs 2"] = "Working";
    Globals.vendingnumCV22["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumCV22["Coca-Cola"] = "1.75";
    Globals.vendingnumCV22["Coca-Cola Cherry"] = "1.75";
    Globals.vendingnumCV22["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumCV22["Sprite"] = "1.75";
    Globals.vendingnumCV22["Mello Yello"] = "1.75";
    Globals.vendingnumCV22["Fanta"] = "1.75";
  }

  void L11Vending(){
    Globals.vendingnumL11 = {};
    Globals.vendingnumL11["Library 1st floor near office"] = "Working";
    Globals.vendingnumL11["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumL11["Coca-Cola"] = "1.75";
    Globals.vendingnumL11["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumL11["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumL11["Coca-Cola Cherry"] = "1.75";
    Globals.vendingnumL11["Pibb Xtra"] = "1.75";
    Globals.vendingnumL11["Dasani Water"] = "1.75";
  }

  void HH21Vending(){
    Globals.vendingnumHH21 = {};
    Globals.vendingnumHH21["HH 2nd floor near breezeway 1"] = "Working";
    Globals.vendingnumHH21["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumHH21["Coca-Cola"] = "1.75";
    Globals.vendingnumHH21["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumHH21["Coca-Cola Cherry"] = "1.75";
    Globals.vendingnumHH21["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumHH21["Sprite"] = "1.75";
    Globals.vendingnumHH21["Mello Yello"] = "1.75";
}

void HH22Vending(){
    Globals.vendingnumHH22 = {};
    Globals.vendingnumHH22["HH 2nd floor near breezeway 2"] = "Working";
    Globals.vendingnumHH22["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Snack";
    Globals.vendingnumHH22["Grippos BBQ"] = "1.50";
    Globals.vendingnumHH22["Oatmeal Cream Pie"] = "1.25";
    Globals.vendingnumHH22["Reese's Cups"] = "2.00";
    Globals.vendingnumHH22["Reese's Pieces"] = "2.00";
    Globals.vendingnumHH22["Baby Ruth"] = "2.00";
    // Add more items here
}

void HH31Vending(){
    Globals.vendingnumHH31 = {};
    Globals.vendingnumHH31["HH 3rd floor in common area 1"] = "Working";
    Globals.vendingnumHH31["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumHH31["Coca-Cola"] = "1.75";
    Globals.vendingnumHH31["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumHH31["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumHH31["Coca-Cola Cherry"] = "1.75";
    Globals.vendingnumHH31["Sprite"] = "1.75";
    Globals.vendingnumHH31["Pibb Xtra"] = "1.75";

}

  void HH32Vending(){
      Globals.vendingnumHH32 = {};
      Globals.vendingnumHH32["HH 3rd floor in common area 2"] = "Working";
      Globals.vendingnumHH32["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Snack";
      Globals.vendingnumHH32["Pork Rinds BBQ"] = "1.50";
      Globals.vendingnumHH32["Reese's Cups"] = "2.00";
      Globals.vendingnumHH32["Reese's Pieces"] = "2.00";
      Globals.vendingnumHH32["Baby Ruth"] = "2.00";
      Globals.vendingnumHH32["Skittles"] = "2.00";
      Globals.vendingnumHH32["3 Musketeers"] = "2.00";
      Globals.vendingnumHH32["Nature Valley Crunchy"] = "2.00";
      Globals.vendingnumHH32["Lance Grilled Cheese Crackers"] = "1.25";
      Globals.vendingnumHH32["Mamba"] = "1.25";
      Globals.vendingnumHH32["Nutter Butter"] = "2.00";
      Globals.vendingnumHH32["Rice Krispie Treat"] = "2.00";
      Globals.vendingnumHH32["Life Savers"] = "1.00";
  }

  void UCSg1Vending(){
    Globals.vendingnumUCSg1 = {};
    Globals.vendingnumUCSg1["UCS Ground floor near book store"] = "Working";
    Globals.vendingnumUCSg1["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumUCSg1["Coca-Cola"] = "1.75";
    Globals.vendingnumUCSg1["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumUCSg1["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumUCSg1["Coca-Cola Cherry"] = "1.75";
    Globals.vendingnumUCSg1["Sprite"] = "1.75";
    Globals.vendingnumUCSg1["Dasani Water"] = "1.75";
}

void UCS21Vending(){
    Globals.vendingnumUCS21 = {};
    Globals.vendingnumUCS21["UCS 2nd floor in common area 1"] = "Working";
    Globals.vendingnumUCS21["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumUCS21["Coca-Cola"] = "1.75";
    Globals.vendingnumUCS21["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumUCS21["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumUCS21["Sprite"] = "1.75";
    Globals.vendingnumUCS21["Dasani Water"] = "1.75";
}

void U1Vending(){
    Globals.vendingnumU1 = {};
    Globals.vendingnumU1["UCS and UCN connecting hallway 1"] = "Working";
    Globals.vendingnumU1["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumU1["Dasani Water"] = "1.75";
    Globals.vendingnumU1["Minute Maid Lemonade"] = "1.75";
    Globals.vendingnumU1["Monster Original Energy"] = "2.50";
    Globals.vendingnumU1["Monster Java Coffee Energy"] = "2.50";
    Globals.vendingnumU1["Monster Zero Ultra White Energy"] = "2.50";
    Globals.vendingnumU1["Smart Water"] = "2.25";
    Globals.vendingnumU1["Powerade Blue Raspberry Cherry"] = "2.25";
}

  void U2Vending(){
    Globals.vendingnumU2 = {};
    Globals.vendingnumU2["UCS and UCN connecting hallway 2"] = "Working";
    Globals.vendingnumU2["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Snack";
    Globals.vendingnumU2["Cheez-It"] = "1.50";
    Globals.vendingnumU2["Funyuns"] = "1.50";
    Globals.vendingnumU2["Ruffles Cheddar"] = "1.50";
    Globals.vendingnumU2["Pork Rinds BBQ"] = "1.50";
    Globals.vendingnumU2["Ruffles Oven Backed Cheddar"] = "1.50";
    Globals.vendingnumU2["Lays Classic"] = "1.50";
    Globals.vendingnumU2["Cheetos"] = "1.50";
    Globals.vendingnumU2["Doritos Nacho Cheese"] = "1.50";
    Globals.vendingnumU2["Fritos"] = "1.50";
    Globals.vendingnumU2["Cheetos Flamin’ Hot"] = "1.50";
    Globals.vendingnumU2["Lays Classic Oven Baked"] = "1.50";
    Globals.vendingnumU2["Oatmeal Cream Pie"] = "1.50";
    Globals.vendingnumU2["Lays Sour Cream and Onion"] = "1.50";
    Globals.vendingnumU2["Doritos Cool Ranch"] = "1.50";
    Globals.vendingnumU2["Lays Oven Backed BBQ"] = "1.50";
    Globals.vendingnumU2["Reese's Cups"] = "2.00";
    Globals.vendingnumU2["Reese's Pieces"] = "2.00";
    Globals.vendingnumU2["Hersey's"] = "2.00";
    Globals.vendingnumU2["Belvita Crunchy"] = "2.00";
    Globals.vendingnumU2["M&M’s Peanut Butter"] = "2.00";
    Globals.vendingnumU2["Twix"] = "2.00";
    Globals.vendingnumU2["3 Musketeers"] = "2.00";
    Globals.vendingnumU2["Snickers"] = "2.00";
    Globals.vendingnumU2["M&M's Peanuts"] = "2.00";
    Globals.vendingnumU2["Butter Finger"] = "2.00";
    Globals.vendingnumU2["Nature Valley Crunchy"] = "2.00";
    Globals.vendingnumU2["Lance Grilled Cheese Crackers"] = "1.25";
    Globals.vendingnumU2["Lance peanut Butter Crackers"] = "1.25";
    Globals.vendingnumU2["Baby Ruth"] = "2.00";
    Globals.vendingnumU2["Peanuts"] = "2.00";
    Globals.vendingnumU2["Sweet N' Salty Mix"] = "2.00";
    Globals.vendingnumU2["Oreo"] = "2.00";
    Globals.vendingnumU2["Pork and Beef Stick"] = "2.00";
    Globals.vendingnumU2["Skittles"] = "2.00";
    Globals.vendingnumU2["Starburst Mini"] = "2.00";
    Globals.vendingnumU2["Nutter Butter"] = "2.00";
    Globals.vendingnumU2["Rice Krispie Treat"] = "2.00";
    Globals.vendingnumU2["Jack Links Beef Teriyaki Bites"] = "3.00";
    Globals.vendingnumU2["Chocolate Chip Cookie"] = "3.00";
    Globals.vendingnumU2["Pop-Tart Cherry"] = "1.25";
}


void U3Vending(){
    Globals.vendingnumU3 = {};
    Globals.vendingnumU3["UCS and UCN connecting hallway 3"] = "Working";
    Globals.vendingnumU3["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumU3["Coca-Cola"] = "1.75";
    Globals.vendingnumU3["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumU3["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumU3["Sprite"] = "1.75";
}

void KVG1Vending(){
    Globals.vendingnumKVG1 = {};
    Globals.vendingnumKVG1["KV Ground floor next to mini gallery 1"] = "Working";
    Globals.vendingnumKVG1["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumKVG1["Coca-Cola"] = "1.75";
    Globals.vendingnumKVG1["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumKVG1["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumKVG1["Sprite"] = "1.75";
    Globals.vendingnumKVG1["Dasani Water"] = "1.75";
    Globals.vendingnumKVG1["Monster Original Energy"] = "2.50";
}

void KVG2Vending(){
    Globals.vendingnumKVG2 = {};
    Globals.vendingnumKVG2["KV Ground floor next to mini gallery 2"] = "Working";
    
}

void KVG3Vending(){
    Globals.vendingnumKVG3 = {};
    Globals.vendingnumKVG3["KV Ground floor next to mini gallery 3"] = "Working";
    
}

void KVG4Vending() {
    Globals.vendingnumKVG4 = {};
    Globals.vendingnumKVG4["KV ground floor near stairs 4"] = "Working";
    Globals.vendingnumKVG4["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumKVG4["Coca-Cola"] = "1.75";
    Globals.vendingnumKVG4["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumKVG4["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumKVG4["Coca-Cola Cherry"] = "1.75";
    Globals.vendingnumKVG4["Sprite"] = "1.75";
    Globals.vendingnumKVG4["Dasani"] = "1.75";
}

void KV11Vending () {
    Globals.vendingnumKV11 = {};
    Globals.vendingnumKV11["KV 1st floor near stairs 1"] = "Working";
    Globals.vendingnumKV11["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumKV11["Coca-Cola"] = "1.75";
    Globals.vendingnumKV11["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumKV11["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumKV11["Coca-Cola Cherry"] = "1.75";
    Globals.vendingnumKV11["Sprite"] = "1.75";
    Globals.vendingnumKV11["Mello Yello"] = "1.75";
}




void KV21Vending(){
    Globals.vendingnumKV21 = {};
    Globals.vendingnumKV21["KV 2nd floor near elevator 1"] = "Working";
    Globals.vendingnumKV21["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumKV21["Coca-Cola"] = "1.75";
    Globals.vendingnumKV21["Coca-Cola Zero"] = "1.75";
    Globals.vendingnumKV21["Coca-Cola Diet"] = "1.75";
    Globals.vendingnumKV21["Sprite"] = "1.75";
    Globals.vendingnumKV21["Mello Yello"] = "1.75";
}

void KV22Vending(){
    Globals.vendingnumKV22 = {};
    Globals.vendingnumKV22["KV 2nd floor near elevator 2"] = "Out Of Order";
    Globals.vendingnumKV22["Accepts Cash/Crimson Card/Credit and Debit Card/Apple Pay/ Samsung Pay/Google Pay"] = "Drink";
    Globals.vendingnumKV22["Dasani Water"] = "1.75";
    Globals.vendingnumKV22["Monster Original Energy"] = "2.50";
    Globals.vendingnumKV22["Monster Zero Ultra Energy"] = "2.50";
}



void drinkListAdd(){
  Globals.drinkList = ["Coca-Cola","Coca-Cola Zero","Coca-Cola Cherry","Coca-Cola Diet","Sprite","Dasani","Pibb Xtra","Monster Original Energy","Monster Zero Ultra Energy","Powerade Blue Raspberry Cherry","Powerade Fruit Punch","Minute Maid Lemonade","Mountain Berry Blast","Monster Java Coffee Energy","Smart Water","Mello Yello","Fanta","Monster Zero Ultra White Energy"];

}

void snackListAdd(){
  Globals.snackList = ["Ruffles Cheddar", "Lays Sour Cream and Onion", "Grippos BBQ", "Pork Rinds BBQ", "Lays Classic", "Cheetos Crunchy", "Doritos Nacho Cheese", "Fritos Chili Cheese", "Miss Vickies Spicy Dill Pickle", "Doritos Spicy Sweet Chili", "Reese's Cups", "Reese's Pieces", "Baby Ruth", "Sweet 'N Spicy Mix", "Lance Grilled Cheese Crackers", "Lance Peanut Butter Crackers", "Skittles", "Nutter Butter", "Rice Krispie Treat", "Pop-Tart Strawberry", "Chocolate Chip Cookies", "Funyuns", "Lays Classic Oven Baked", "Doritos Cool Ranch", "M&M's Peanuts", "M&M's Peanut Butter", "Nature Valley Crunchy", "Mamba", "Starburst Mini", "Ruffles Oven Baked Cheddar", "Cheetos Flamin’ Hot", "Fritos Twist", "Cheetos Puffs", "Fritos BBQ Chips", "Oatmeal Cream Pie", "Ruffles Cheddar Cheese", "Miss Vickies Spicy Dill Pickle Chips", "Lays BBQ Oven Baked", "Lays Oven Baked BBQ", "Ruffles Oven Baked Cheddar and Sour Cream", "Twix", "Belvita Crunchy", "3 Musketeers", "Snickers", "Reese's Take 5", "Butter Finger", "Hersey's", "Peanuts", "Sweet N' Salty Mix", "Oreo", "Pork and Beef Stick", "Life Savers"];
}















      
}





