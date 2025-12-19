class WeatherModel {
  final String nameCity;
  final DateTime date;
  final double avgTemp;
  final double maxTemp;
  final double minTemp;
  final String weatherCond;
  final String image;

  WeatherModel({
    required this.nameCity,
    required this.date,
    required this.avgTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherCond,
    required this.image,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      nameCity: json["location"]["name"],
      date: DateTime.parse(json["current"]["last_updated"]),
      avgTemp: (json["forecast"]["forecastday"][0]["day"]["avgtemp_c"]).toDouble(),
      maxTemp: (json["forecast"]["forecastday"][0]["day"]["maxtemp_c"]).toDouble(),
      minTemp: (json["forecast"]["forecastday"][0]["day"]["mintemp_c"]).toDouble(),
      weatherCond: json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
    );
  }
}
