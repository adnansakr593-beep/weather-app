import 'package:flutter/material.dart';

class Noinfo extends StatelessWidget {
  const Noinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text
            (
              'There is no weather 😶‍🌫️ ', 
              style: TextStyle(fontSize: 30),
            ),
            Text
            (
              "Start Searching Now 🔍 ", 
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
