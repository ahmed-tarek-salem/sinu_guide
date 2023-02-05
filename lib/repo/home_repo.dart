import 'package:dio/dio.dart';
import 'package:sinu_guide/models/weather_response_model.dart';
import 'package:sinu_guide/network/home_api.dart';

class HomeRepo {
  HomeApi homeApi = HomeApi();
  getWeatherData() async {
    final response = await homeApi.getWeatherData();
    final data = WeatherResponseModel.fromJson(response.data);
    return data;
  }

  Future<num> getAirPollution() async {
    final response = await homeApi.getAirPollution();
    print(response.data['list'][0]['main']['aqi']);
    final num data = response.data['list'][0]['main']['aqi'] as num;
    return data;
  }
}
