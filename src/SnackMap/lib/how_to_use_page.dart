import 'package:flutter/material.dart';
import 'location_page.dart';
import 'price_page.dart';
//import 'name_page.dart';
import 'update_vending_machine_page.dart';

class HowToUsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How to Use'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to SnackMap!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      SizedBox(height: 5.0), // Add space between text
                      Text(
                        'Not sure what you\'re looking at?',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        'Look down below to see the purpose of each page and how to use it.',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20), // Adjust the width as needed

                // Add the SnackMap logo to the page
                Image(
                  image: AssetImage('/SnackMapLogoIcon.png'), 
                  height: 150, 
                ),
              ],
            ),
            SizedBox(height: 20.0), // Add space between text
            // Text widget for Search By Name
            Text(
              '1. Searching By Name:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Looking for a particular snack/drink?',
                    style: TextStyle(
                      fontStyle: FontStyle.italic
                     )
                  ),
                  TextSpan(
                    text: ' \nClick on ',
                  ),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the name page
                       /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NamePage()),
                        ); */
                      },
                      child: Text(
                        '\'Find A Snack By Name\'',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 76, 160, 140), 
                        ),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'and simply locate the name of the snack/drink you wish to find. The dropdown will list all the vending machines that hold that item.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0), // Add space between text
            // Text widget for Search By Location
            Text(
              '2. Searching By Location:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Wanting to avoid a pointless trip?',
                    style: TextStyle(
                      fontStyle: FontStyle.italic
                    )
                  ),
                  TextSpan(
                    text: ' \nClick on ',
                  ),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the location page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LocationPage()),
                        );
                      },
                      child: Text(
                        '\'Find A Snack By Location\'',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 76, 160, 140), 
                        ),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'and find the vending machine you wish to investigate. The dropdown will list the snacks/drinks at that vending machine.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0), // Add space between text
            // Text widget for Search By Price
            Text(
              '3. Searching By Price:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Looking for the best value?',
                    style: TextStyle(
                      fontStyle: FontStyle.italic
                    )
                  ),
                  TextSpan(
                    text: ' \nClick on ',
                  ),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the price page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PricePage()),
                        );
                      },
                      child: Text(
                        '\'Find A Snack By Price\'',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 76, 160, 140), 
                        ),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'and the cheapest items will appear higher on the list. Choose the snack/drink you wish to view and the dropdown will show the price and vending machine locations.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0), // Add space between text
            // Text widget for Update Vending Machine
            Text(
              '4. Update Vending Machine:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Looking for some good karma?',
                    style: TextStyle(
                      fontStyle: FontStyle.italic
                    )
                  ),
                  TextSpan(
                    text: ' \nIf you see that an item is out of stock or back in stock, let your fellow classmates know! Start by clicking on ',
                  ),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the update vending machine page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UpdateVendingPage()),
                        );
                      },
                      child: Text(
                        '\'Update Vending Machine\'',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(255, 76, 160, 140),
                        ),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: '. The first prompt requests to know which building the machine is located. Is there more than one machine? Well, specify the one you are wanting to edit in the next prompt. Now, you should tell whether you wish to add or remove an item from its list. A new page will appear containing the possible items: select the item and price (if prompted). Click \'Done\' and now: good karma.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
