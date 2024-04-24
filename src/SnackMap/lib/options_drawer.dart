import 'package:SnackMap/update_vending_machine_page.dart';
import 'home_page.dart';
import 'package:flutter/material.dart';
import 'price_page.dart';


class OptionsDrawer extends StatelessWidget {
  const OptionsDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            
            decoration: BoxDecoration(
              color: Color(0xff64C19D),
            ),
            child: Text(
              'Find A Snack By',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.manage_search),
            title: const Text(
              'Name',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text('Search for a drink or snack by name.'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.room),
            title: const Text(
              'Location',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text('Search for a drink or snack by location.'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const LocationPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.paid),
            title: const Text(
              'Price',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text('Search for a drink or snack by price.'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const PricePage()));
            },
          ),

          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff3A95D1)
            ), child: Text(
              '\nOr...',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction),
            title: const Text(
              'Update Vending Machine',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text('Do your act of kindness for the day and let others know if a item is back in stock or out.'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const UpdateVendingPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.question_mark),
            title: const Text(
              'More Information',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text('Travel back to the home screen to learn how to use or learn more about us!'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomePage()));
            },
          ),
          ListTile( 
            leading: const Icon(Icons.navigation),
            title: const Text(
              'How to Use',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: const Text('Learn how to navigate the application!'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HowToUsePage())); 
            },
          ),
        ],
      ),
    );
  }
}
