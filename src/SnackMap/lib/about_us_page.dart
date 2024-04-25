import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - kToolbarHeight - 120.0, 
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Team:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Jessica Ward, Kaylyn McGehee, Matthew Higdon, and Xiao Wang',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'About Our Team:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'We are four IUS Computer Science students that were assigned a task. We came together and decided on the project you see now: SnackMap.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'About the Project:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'What exactly is SnackMap? It is a way for members of IUS to locate the snacks/drinks in the vending machines around the IUS campus.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Contact Us:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Have feedback or questions? We\'d love to hear from you! Reach out to us at snackmapflutter@gmail.com (it is a lot, just copy and paste it :D).',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0, 
              right: 0, 
              child: Image.asset(
                'aboutUs.png',
                height: 250.0,
                width: 250.0, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}