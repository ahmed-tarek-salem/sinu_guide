class WeatherResponseModel {
  WeatherResponseModel({
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.dt,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  final List<Weather> weather;
  final String? base;
  final Main? main;
  final double? visibility;
  final Wind? wind;
  final double? dt;
  final double? timezone;
  final int? id;
  final String? name;
  final int? cod;

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      WeatherResponseModel(
        weather:
            List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
        base: json["base"],
        main: Main.fromJson(json["main"]),
        visibility: json["visibility"]?.toDouble(),
        wind: Wind.fromJson(json["wind"]),
        dt: json["dt"]?.toDouble(),
        timezone: json["timezone"]?.toDouble(),
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
      );
}

class Main {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final double? pressure;
  final double? humidity;
  final double? seaLevel;
  final double? grndLevel;

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        temp: json["temp"]?.toDouble(),
        feelsLike: json["feels_like"]?.toDouble(),
        tempMin: json["temp_min"]?.toDouble(),
        tempMax: json["temp_max"]?.toDouble(),
        pressure: json["pressure"]?.toDouble(),
        humidity: json["humidity"]?.toDouble(),
        seaLevel: json["sea_level"]?.toDouble(),
        grndLevel: json["grnd_level"]?.toDouble(),
      );
}

class Weather {
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  final int id;
  final String main;
  final String description;
  final String icon;

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );
}

class Wind {
  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  final double? speed;
  final int? deg;
  final double? gust;

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
        gust: json["gust"]?.toDouble(),
      );
}
