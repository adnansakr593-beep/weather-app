import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_api.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherservices) : super(WeatherInitial());

  WeatherModel? weatherModel;
  final WeatherService weatherservices;

  Future<void> getweather( {required String cityname}) async {
    emit(WeatherLoading());
    try {
      weatherModel = await weatherservices.getdata(cityname: cityname);
      emit(WeatherSuccess(weatherModel!));
    // ignore: unused_catch_clause
    } on Exception catch (e) {
      emit(WeatherFailure(e.toString()));
    }
  }
}
