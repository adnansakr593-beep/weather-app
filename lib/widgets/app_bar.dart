  import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page.dart';

AppBar appbar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Sakr Weather App',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return SearchScrean();
                },
              ),
            );
          },
        ),
      ],
    );
  }