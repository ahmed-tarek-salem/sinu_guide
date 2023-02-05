import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sinu_guide/network/dio_helper.dart';

class HomeApi {
  DioHelper _dioHelper = DioHelper();
  getPermission() async {
    await Geolocator.requestPermission();
  }

  Future<Position> getPosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium);
    return position;
  }

  Future<Response> getWeatherData() async {
    await getPermission();
    final position = await getPosition();
    final Response response = await _dioHelper.getOpenWeather({
      'lon': position.longitude,
      'lat': position.latitude,
      'appid': DioHelper.apiKey,
      'units': 'metric',
      'lang': 'ar',
    });
    return response;
  }
}
