import 'package:flutter/material.dart';
import 'options_drawer.dart';
import 'vending_machine_data_sheet_api.dart';


class UpdateVendingPage extends StatefulWidget {
  const UpdateVendingPage({Key? key});

  @override
  State<StatefulWidget> createState() {
    return UpdateVendingPageState();
  }
}

class UpdateVendingPageState extends State<UpdateVendingPage> {
  String buildingdropdownValue = ' ';
  String vendingdropdownValue = ' ';
  String addremovedropdownValue = ' ';
  String pricedropdownValue = ' ';
  String addremove = '';
  List<String> vendingList = [' '];
  List<String> vendingTypeList = ['Drink', 'Snack'];
  String vendingType = ' ';
  String selectedVending = '';
  List<String> allKnownSnack = ["Baby Ruth", "Beef Sticks", "Belvita Crunchy", "Butter Finger", "Cheez-It", "Cheetos", "Cheetos Crunchy", "Cheetos Crunchy Flamin’ Hot", "Cheetos Flamin’ Hot", "Cheetos Puffs", "Chocolate Chip Cookies", "Cliff Chocolate Chip Cookies", "Doritos BBQ", "Doritos Cool Ranch", "Doritos Nacho Cheese", "Doritos Spicy Sweet Chili", "Fritos", "Fritos BBQ Chips", "Fritos Chili Cheese", "Fritos Twist", "Funyuns", "Grippos BBQ", "Hersey's", "Honey Bun", "Jack Link's Beef Teriyaki Bites", "Jack Link's Prime Rib", "Jack Links Beef Teriyaki Bites", "Lance Grilled Cheese Crackers", "Lance Peanut Butter Crackers", "Lays BBQ Oven Baked", "Lays BBQ Oven Baked", "Lays Classic", "Lays Classic Oven Baked", "Lays Classic OvenBaked", "Lays Flamin’ Hot", "Lays Original", "Lays Oven Baked", "Lays Oven Baked", "Lays Oven Baked BBQ", "Lays Sour Cream and Onion", "M&M's Peanuts", "M&M's Peanut Butter", "M&M’s Peanut Butter", "Mamba", "Meat Stick", "Miss Vickies Spicy Dill Pickle", "Miss Vickies Spicy Dill Pickle", "Nature Valley Crunchy", "Nutter Butter", "Oatmeal Cream Pie", "Oreo", "Peanuts", "Pork and Beef Sticks", "Pork Rinds", "Pork Rinds", "Pork Rinds BBQ", "Pop-Tart Cherry", "Pop-Tart Strawberry", "Reese's Cookies", "Reese's Cups", "Reese's Pieces", "Reese's Take 5", "Rice Krispie Treat", "Ruffles Cheddar Cheese", "Ruffles Oven Baked Cheddar", "Ruffles Oven Baked Cheddar and Sour Cream", "Salted Peanuts", "Skittles", "Snickers", "Starburst Mini", "Sweet 'N Salty Mix", "Sweet 'N Spicy Mix", "Sweet 'N Spicy Mix", "Twix"];
  List<String> allKnownDrink = ["Coca-Cola", "Coca-Cola Cherry", "Coca-Cola Diet", "Coca-Cola Zero", "Dasani Water", "Fanta", "Mello Yello", "Minute Maid Lemonade", "Monster Java Coffee Energy", "Monster Original Energy", "Monster Zero Ultra Energy", "Monster Zero Ultra White Energy", "Mountain Berry Blast", "Pibb Xtra", "Powerade Blue Raspberry Cherry", "Powerade Fruit Punch", "Smart Water", "Sprite"];
  List<bool> checkboxValues = [];
  List<String> checkboxList = [];
  Map<String, double> selectedItems = {};
  List<String> dropdownpriceValues = [];

  bool showBuildingDropdown = true;
  bool showVendingDropdown = false;
  bool showAddRemoveDropdown = false;
  bool showCheckboxes = false;
  bool showDoneButton = false;
  bool showUpdatedVending = false;
  bool showupdatedVending = false;

  int vendingNumber = 0;




  int getVendingMachineNumber(String location) {
    switch (location) {
      case 'PS 1st floor near bathrooms 1':
        vendingNumber = 1;
        break;
      case 'PS 1st floor near bathrooms 2':
        vendingNumber = 2;
        break;
      case 'LF 1st floor near doors 1':
        vendingNumber = 3;
        break;
      case 'LF 1st floor near doors 2':
        vendingNumber = 4;
        break;
      case 'LF 1st floor near doors 3':
        vendingNumber = 5;
        break;
      case "LF 1st floor near men's bathroom 1":
        vendingNumber = 6;
        break;
      case "LF 1st floor near men's bathroom 2":
        vendingNumber = 7;
        break;
      case 'CV 1st floor near bathrooms 1':
        vendingNumber = 8;
        break;
      case 'CV 2nd floor near stairs 1':
        vendingNumber = 9;
        break;
      case 'CV 2nd floor near stairs 2':
        vendingNumber = 10;
        break;
      case 'Library 1st floor near office':
        vendingNumber = 11;
        break;
      case 'HH 2nd floor near breezeway 1':
        vendingNumber = 12;
        break;
      case 'HH 2nd floor near breezeway 2':
        vendingNumber = 13;
        break;
      case 'HH 3rd floor in common area 1':
        vendingNumber = 14;
        break;
      case 'HH 3rd floor in common area 2':
        vendingNumber = 15;
        break;
      case 'UCS Ground floor near book store':
        vendingNumber = 16;
        break;
      case 'UCS 2nd floor in common area 1':
        vendingNumber = 17;
        break;
      case 'UCS and UCN connecting hallway 1':
        vendingNumber = 18;
        break;
      case 'UCS and UCN connecting hallway 2':
        vendingNumber = 19;
        break;
      case 'UCS and UCN connecting hallway 3':
        vendingNumber = 20;
        break;
      case 'KV Ground floor near mini gallery 1':
        vendingNumber = 21;
        break;
      case 'KV Ground floor near mini gallery 2':
        vendingNumber = 22;
        break;
      case 'KV Ground floor near mini gallery 3':
        vendingNumber = 23;
        break;
      case 'KV ground floor near stairs 4':
        vendingNumber = 24;
        break;
      case 'KV 1st floor near stairs 1':
        vendingNumber = 25;
        break;
      case 'KV 2nd floor near elevator 1':
        vendingNumber = 26;
        break;
      case 'KV 2nd floor near elevator 2':
        vendingNumber = 27;
        break;
      default:
        vendingNumber = -1;
        break;
    }
    return vendingNumber;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const OptionsDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('Update a Vending Machine'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            buildingDropdown(),
            vendingDropdown(),
            addRemoveDropdown(),
            checkboxes(),
            doneButton(),
            updatedVending(),
          ],
        ),
      ),
    );
  }

  Widget buildingDropdown() {
    return Visibility(
      visible: showBuildingDropdown,
      child: Column(
        children: [
          Text(
            "Select the Vending Machine's building.\n",
            style: TextStyle(fontSize: 20),
          ),
          DropdownButton<String>(
            value: buildingdropdownValue,
            items: <String>[' ','Physical Sciences','Life Sciences','Crestview Hall','Library','Hillside Hall','University Center','Knobview Hall'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 25),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                if (newValue != ' ') {
                  buildingdropdownValue = newValue!;
                  //Get vending machines in the building selected
                  if(newValue == 'Physical Sciences'){
                    vendingList = [' ','PS 1st floor near bathrooms 1','PS 1st floor near bathrooms 2'];
                    }else if(newValue == 'Life Sciences'){
                      vendingList = [' ','LF 1st floor near doors 1','LF 1st floor near doors 2','LF 1st floor near doors 3',"LF 1st floor near men's bathroom 1","LF 1st floor near men's bathroom 2"];
                    }else if(newValue == 'Crestview Hall'){
                      vendingList = [' ','CV 1st floor near bathrooms 1','CV 2nd floor near stairs 1','CV 2nd floor near stairs 2',];
                    }else if(newValue == 'Library'){
                      vendingList = [' ','Library 1st floor near office'];
                    }else if(newValue == 'Hillside Hall'){
                      vendingList = [' ','HH 2nd floor near breezeway 1','HH 2nd floor near breezeway 2','HH 3rd floor in common area 1','HH 3rd floor in common area 2'];
                    }else if(newValue == 'University Center'){
                      vendingList = [' ','UCS Ground floor near book store','UCS 2nd floor in common area 1','UCS and UCN connecting hallway 1','UCS and UCN connecting hallway 2','UCS and UCN connecting hallway 3'];
                    }else{
                      vendingList = [' ','KV Ground floor next to mini gallery 1','KV Ground floor next to mini gallery 2','KV Ground floor next to mini gallery 3','KV ground floor near stairs 4','KV 1st floor near stairs 1','KV 2nd floor near elevator 1','KV 2nd floor near elevator 2'];
                    }
                    //Reset vendingdropdownValue after this is changed
                    vendingdropdownValue = ' ';
                    addremovedropdownValue = ' ';
                    showBuildingDropdown = true;
                    showVendingDropdown = true;
                  }
                }
              );
            },
          ),
        ],
      ),
    );
  }

  Widget vendingDropdown() {
    return Visibility(
      visible: showVendingDropdown,
      child: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "Select the Vending Machine\n",
          style: TextStyle(fontSize: 20),
        ),
        DropdownButton<String>(
          value: vendingdropdownValue,
          items: vendingList.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(fontSize: 25),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              if(newValue != ' '){
                vendingdropdownValue = newValue!;
                selectedVending = newValue;


                //Get machine index
                getVendingMachineNumber(selectedVending);

                //Get machine types
                if(newValue == 'PS 1st floor near bathrooms 1' || newValue == 'LF 1st floor near doors 2' || newValue == 'LF 1st floor near doors 3'|| newValue == "LF 1st floor near men's bathroom 2"|| newValue ==  'CV 2nd floor near stairs 1'|| newValue == 'CV 2nd floor near stairs 2'|| newValue == 'Library 1st floor near office'|| newValue == 'HH 2nd floor near breezeway 1 '|| newValue == 'HH 3rd floor in common area 1'|| newValue == 'UCS Ground floor near book store'|| newValue == 'UCS 2nd floor in common area 1'|| newValue == 'UCS and UCN connecting hallway 1'|| newValue == 'UCS and UCN connecting hallway 3'|| newValue == 'KV Ground floor next to mini gallery 1'|| newValue == 'KV ground floor near stairs 4'|| newValue == 'KV 1st floor near stairs 1'|| newValue == 'KV 2nd floor near elevator 1'|| newValue == 'KV 2nd floor near elevator 2'){
                  vendingType = 'Drink';
                } else if (newValue == ' ') {
                  vendingType = ' ';
                } else {
                  vendingType = 'Snack';
                }
                //Reset addremove if changed
                addremovedropdownValue = ' ';
                showAddRemoveDropdown = true;
                showVendingDropdown = true;
              }
            });
          },
        ),
      ],
    )
    );
  }

  Widget addRemoveDropdown() {
    return Visibility(
      visible: showAddRemoveDropdown,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Do you want to add or remove ${vendingType}s?\n",
            style: TextStyle(fontSize: 20),
          ),
          DropdownButton<String>(
            value: addremovedropdownValue,
            items: <String>[' ', 'Add ${vendingType}s', 'Remove ${vendingType}s']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 25),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                if(newValue != ' '){
                  addremovedropdownValue = newValue!;
                  addremove = newValue;
                  showCheckboxes = true;
                  showAddRemoveDropdown = false;
                  showBuildingDropdown = false;
                  showVendingDropdown = false;
                  showDoneButton = true;
                  if (vendingType == "Snack") {
                    checkboxList = allKnownSnack;
                    checkboxValues = List<bool>.filled(allKnownSnack.length, false);
                    dropdownpriceValues = List.filled(allKnownSnack.length, 'Select Price');
                  } else if (vendingType == "Drink") {
                    checkboxList = allKnownDrink;
                    checkboxValues = List<bool>.filled(allKnownDrink.length, false);
                    dropdownpriceValues = List.filled(allKnownDrink.length, 'Select Price');
                  }
              }
              });
            },
          ),
        ],
      ),
    );
  }

  Widget checkboxes() {
  return Visibility(
    visible: showCheckboxes,
    child: Expanded(
      child: ListView.builder(
        itemCount: checkboxList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(width: 10),
                  Text(
                    checkboxList[index],
                    style: TextStyle(fontSize: 17.0),
                  ),
                  SizedBox(width: 10),
                  Checkbox(
                    value: checkboxValues[index],
                    onChanged: (bool? value) {
                      setState(() {
                        checkboxValues[index] = value ?? false;
                      });
                    },
                  ),
                ],
              ),
              Visibility(
                visible: checkboxValues[index] && (addremove == "Add Snacks" || addremove == "Add Drinks"),
                child: DropdownButton<String>(
                  value: dropdownpriceValues[index],
                  items: <String>['Select Price','\$1.00','\$1.25','\$1.50','\$1.75','\$2.00','\$2.25','\$2.50', '\$2.75','\$3.00']
                  .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 17.0),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      if(newValue != 'Select Price'){
                        dropdownpriceValues[index] = newValue!;
                      }
                    });
                  },
                ),
              ),
            ],
          );
        },
      )
     ),
    );
  }

  Widget doneButton() {
  return Visibility(
    visible: showDoneButton,
    child: Column(
      children: [
        SizedBox(
          height: 50,
          width: 50,
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
          onPressed: () async {
            if(addremove == "Remove Drinks" || addremove == "Remove Snacks"){
              List<String> oldItems = [];
              for(int i = 0; i < checkboxList.length; i++){
                if(checkboxValues[i]){
                  oldItems.add(checkboxList[i]);
                }
              }
              await VendingMachineDataSheetApi.sendRemoveItem(vendingNumber, oldItems);
            }else{
                //Store selected items
                Map<String, double> newItemsandPrices = {};
                for (int i = 0; i < checkboxList.length; i++) {
                  if (checkboxValues[i]) {
                    newItemsandPrices[checkboxList[i]] = double.parse(dropdownpriceValues[i].substring(1));
                  }
                }
                await VendingMachineDataSheetApi.sendAddItem(vendingNumber, newItemsandPrices);
            }
                setState(() {
                  if (addremove != ' ') {
                    showBuildingDropdown = false;
                    showVendingDropdown = false;
                    showAddRemoveDropdown = false;
                    showCheckboxes = false;
                    showDoneButton = false;
                    showupdatedVending = true;
                  }
                });
             },
          child: Text('Done'),
        ),
      ],
    ),
  );
}

  Widget updatedVending() {
    return Visibility(
      visible: showupdatedVending,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: 50,
          ),
          Text(
            "Thank you! Vending information was updated.",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}