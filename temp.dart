// }

// class CustomMaterialApp extends StatelessWidget {
//   const CustomMaterialApp({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp
//     (
//       theme: ThemeData
//       (
//         primarySwatch: weatherMaterialColor(BlocProvider.of<GetWeatherCubit>(context).weatherModeldata?.weatherCond)
//       ),
//       debugShowCheckedModeBanner: false,
//       home: Homepage(),
//     );
//   }
// }

// MaterialColor weatherMaterialColor(String? condition) {
//   final normalized = condition?.toLowerCase().trim();
//   switch (normalized) {
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
//     // باقي الحالات ...
//     default:
//       return Colors.blue; // fallback ثابت
//   }
// }
