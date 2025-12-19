// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
// import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
// import 'package:weather_app/services/weather_api.dart';
// import 'package:weather_app/pages/homepage.dart';

// void main() {
//   runApp(WeatherApp());
// }

// class WeatherApp extends StatelessWidget {
//   WeatherApp({super.key, required this.weather});

//   late WeatherService weather;

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => WeatherCubit(weather),
//       child: BlocBuilder<WeatherCubit, WeatherState>(
//         builder: (context, state) {
//           String? condition;

//           if (state is WeatherSucss) {
//             condition = state.weather.weatherCond; // جاي من ال API
//           }

//           return MaterialApp(
//             theme: ThemeData(
//               primarySwatch: weatherMaterialColor(condition),
//               scaffoldBackgroundColor: weatherMaterialColor(
//                 condition,
//               ).shade100, // يغير الخلفية
//               appBarTheme: AppBarTheme(
//                 backgroundColor: weatherMaterialColor(
//                   condition,
//                 ), // لون الـ AppBar
//               ),
//             ),
//             debugShowCheckedModeBanner: false,
//             home: const Homepage(),
//           );
//         },
//       ),
//     );
//   }
// }

// MaterialColor weatherMaterialColor(String? condition) {
//   if (condition == null) return Colors.blue; // default

//   switch (condition.toLowerCase()) {
//     case "sunny":
//     case "clear":
//       return Colors.amber;

//     case "partly cloudy":
//       return Colors.indigo;

//     case "cloudy":
//     case "overcast":
//       return Colors.blueGrey;

//     case "mist":
//     case "fog":
//     case "freezing fog":
//       return Colors.brown;

//     case "patchy light drizzle":
//     case "light drizzle":
//     case "freezing drizzle":
//     case "heavy freezing drizzle":
//     case "patchy light rain":
//     case "light rain":
//     case "moderate rain at times":
//     case "moderate rain":
//     case "heavy rain at times":
//     case "heavy rain":
//     case "light rain shower":
//     case "moderate or heavy rain shower":
//     case "torrential rain shower":
//     case "patchy rain possible":
//       return Colors.blue;

//     case "light freezing rain":
//     case "moderate or heavy freezing rain":
//     case "light sleet":
//     case "moderate or heavy sleet":
//     case "light sleet showers":
//     case "moderate or heavy sleet showers":
//     case "patchy sleet possible":
//     case "patchy freezing drizzle possible":
//     case "ice pellets":
//     case "light showers of ice pellets":
//     case "moderate or heavy showers of ice pellets":
//       return Colors.teal;

//     case "patchy light snow":
//     case "light snow":
//     case "patchy moderate snow":
//     case "moderate snow":
//     case "patchy heavy snow":
//     case "heavy snow":
//     case "light snow showers":
//     case "moderate or heavy snow showers":
//     case "patchy snow possible":
//     case "blowing snow":
//     case "blizzard":
//       return Colors.cyan;

//     case "thundery outbreaks possible":
//     case "patchy light rain with thunder":
//     case "moderate or heavy rain with thunder":
//     case "patchy light snow with thunder":
//     case "moderate or heavy snow with thunder":
//       return Colors.deepPurple;

//     default:
//       return Colors.green; // fallback safe MaterialColor
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
