import 'package:flutter/material.dart';

class Noinfo extends StatelessWidget {
  const Noinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text
            (
              'There is no weather 😶‍🌫️ ', 
              style: TextStyle(fontSize: 28),
            ),
            Text
            (
              "Start Searching Now 🔍 ", 
              style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
    );
  }
}
