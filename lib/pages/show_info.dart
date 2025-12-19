import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class ShowInfo extends StatelessWidget {
  const ShowInfo({super.key, required this.weather});

  final WeatherModel weather;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Text(
                weather.nameCity,
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'update at  ${weather.date.hour} : ${weather.date.minute}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network('https:${weather.image}'),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      'Avg Temp: ${weather.avgTemp}',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('max temp ${weather.maxTemp.round()}\nmin temp ${weather.minTemp.round()}'),
                ],
              ),
            ),
            Text(
              weather.weatherCond,
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
