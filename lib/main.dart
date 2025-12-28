import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/pages/homepage.dart';
import 'package:weather_app/services/weather_api.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => WeatherCubit(WeatherService()),
      child: const WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        String? condition;

        if (state is WeatherSuccess) {
          condition = state.weather.weatherCond;
        }

        final MaterialColor themeColor =
            weatherMaterialColor(condition);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: themeColor,
            scaffoldBackgroundColor: themeColor.shade100,
            appBarTheme: AppBarTheme(
              backgroundColor: themeColor,
              foregroundColor: Colors.white,
              elevation: 0,
            ),
          ),
          home: const Homepage(),
        );
      },
    );
  }
}

MaterialColor weatherMaterialColor(String? condition) {
  if (condition == null) return Colors.blue;

  switch (condition.toLowerCase()) {
    case "sunny":
    case "clear":
      return Colors.amber;

    case "partly cloudy":
      return Colors.indigo;

    case "cloudy":
    case "overcast":
      return Colors.blueGrey;

    case "mist":
    case "fog":
      return Colors.brown;

    case "light rain":
    case "moderate rain":
    case "heavy rain":
    case "patchy rain possible":
      return Colors.blue;

    case "snow":
    case "blizzard":
      return Colors.cyan;

    case "thunderstorm":
    case "thundery outbreaks possible":
      return Colors.deepPurple;

    default:
      return Colors.green;
  }
}
