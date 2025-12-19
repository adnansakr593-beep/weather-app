import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService 
{
  final Dio dio = Dio();

  final String baseUrl = 'http://api.weatherapi.com/v1' ;

  final String apiKey = 'key=9894fdeeed7d4e66a93214002251509';

  WeatherService();
  
  Future<WeatherModel> getdata({required String cityname})async
  {
    try {
  Response response = await dio.get('$baseUrl/forecast.json?$apiKey&q=$cityname');
  
  WeatherModel weatherModel = WeatherModel.fromJson(response.data);

  return weatherModel;

} 
on DioException catch (e) 
{
  final String error = e.response?.data['error']['message']??
  'Opps we has error ,try later';

  throw Exception(error);
}
catch (e) 
{
  final String err = 'Opps we has error ,try again later';
  throw Exception(err);
}
  } 
}