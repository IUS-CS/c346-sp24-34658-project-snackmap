import 'package:flutter/material.dart';
import 'price_page.dart';



//Starts the app
void main() => runApp(const MyApp());


//Builds the homepage
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'SnackMap';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


//Creates the SearchDrawer
class SearchDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: 
        ListView(
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
          title:const Text(
              'Name',
              style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle:const Text('Search for a drink or snack by name.'),
          //tileColor: Color(0xff64C19D),
          onTap:(){
            //Will later update
            //Closes the drawer
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
          subtitle:const Text('Search for a drink or snack by location.'),
          //tileColor: Color(0xff7F3621),
          onTap:(){
            //Will later update.
            //Closes the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.paid),
          title: const Text(
            'Price',
              style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
              )
            ),
          subtitle:const Text('Search for a drink or snack by price.'),
          //tileColor: Color(0xffBDBEC0),
          onTap: (){
            //Go to next page
            Navigator.pop(context);
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const PricePage()));
           },
         ),
       ],
      ),
    );
  }
}




//Has the homepage
class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SearchDrawer(),
      //Puts SnackMap in title 
      appBar: AppBar(
        backgroundColor: const Color(0xff3A95D1),
        title: const Center(
          child: Text('SnackMap'),
        ),
      ),
      //Displays the text
      body: const Center(
        child: Text(
          'Will later add SnackMapLogo.mp4 Here for animation'
        ),
      )
    
    );
  }
    
 }

