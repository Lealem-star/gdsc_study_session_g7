import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Background with Button',
      home: Scaffold(
        body: Stack(
          children: [
            // Image background
            Image.asset(
              'lib/images/tempsnip.png', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            // Button overlay
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page1');
                },
                child: Text('Get Started'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
