import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sinu_guide/models/weather_response_model.dart';
import 'package:sinu_guide/repo/home_repo.dart';

class HomeProvider with ChangeNotifier {
  HomeRepo homeRepo = HomeRepo();
  WeatherResponseModel? weatherResponseModel;

  num? airPollutionIndex;
  bool hasError = false;
  bool isLoading = true;
  String? icon;
  void getHomeData() async {
    try {
      isLoading = true;
      weatherResponseModel = await homeRepo.getWeatherData();
      airPollutionIndex = await homeRepo.getAirPollution();
      isLoading = false;
      hasError = false;
      icon =
          'http://openweathermap.org/img/wn/${weatherResponseModel!.weather[0].icon}@2x.png';
      notifyListeners();
    } catch (e) {
      isLoading = false;
      hasError = true;
    }
  }
}
