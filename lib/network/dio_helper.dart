import 'package:dio/dio.dart';

class DioHelper {
  static const apiPath = 'https://api.openweathermap.org/data/2.5/';
  static const apiKey = 'e5307689acd4538479056d87c72212cd';
  var options = Options(
    validateStatus: (_) => true,
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
  );
  static final _dio = Dio();
  getOpenWeather(Map<String, dynamic> queryParameters) {
    return _dio.get('${apiPath}weather',
        options: options, queryParameters: queryParameters);
  }

  getAirPollution(Map<String, dynamic> queryParameters) {
    return _dio.get('${apiPath}air_pollution',
        options: options, queryParameters: queryParameters);
  }
}
