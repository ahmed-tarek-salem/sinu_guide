import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sinu_guide/models/weather_response_model.dart';
import 'package:sinu_guide/repo/home_repo.dart';

class HomeProvider with ChangeNotifier {
  WeatherResponseModel? weatherResponseModel;
  bool hasError = false;
  bool isLoading = true;
  void getHomeData() async {
    try {
      isLoading = true;
      weatherResponseModel = await HomeRepo().getWeatherData();
      isLoading = false;
      hasError = false;
      notifyListeners();
    } catch (e) {
      isLoading = false;
      hasError = true;
    }
  }
}
