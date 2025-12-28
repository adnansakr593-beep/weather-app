import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/pages/show_info.dart';
import 'package:weather_app/widgets/app_bar.dart';
import 'package:weather_app/widgets/noinfo.dart';

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
 const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoading) {
            return Center(child: CircularProgressIndicator());
          } 
          else if (state is WeatherSuccess) {

            return ShowInfo(weather: BlocProvider.of<WeatherCubit>(context).weatherModel!);
          } else if (state is WeatherFailure) {
            return const Center(
              child: Text('Failed to get weather data. Try again.'),
            );
          } else {
            return Noinfo();
          }
        },
      ),
    );
  }
}
