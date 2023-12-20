import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Placement Cell',
      theme: ThemeData(
        backgroundColor: Colors.black, // App bar background color
         // Body background color
      ),
      home: PlacementCellPage(),
    );
  }
}

class PlacementCellPage extends StatelessWidget {
  final String websiteLink = "https://ietagra.vercel.app/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'placement cell',
              style: TextStyle(fontSize: 18),
            ),
          ),
          backgroundColor: Colors.black, // App bar background color
        ),
      backgroundColor: Colors.grey,

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Placement Cell section of our app! Here, you can find information about the latest placement opportunities, career guidance, and more.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'For detailed information, please visit our official website:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                // Open the website link
                launch(websiteLink);
              },
              child: Text(
                websiteLink,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Link color
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Feel free to explore and reach out to us if you have any questions or concerns.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black, // App bar background color
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '© 2023 Your University. All rights reserved. | Connect with us on Social Media',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
