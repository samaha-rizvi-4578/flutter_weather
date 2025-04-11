// store data returnd by waeterh api
// https://api.open-meteo.com/v1/forecast?latitude=24.8608&longitude=67.0104&current_weather=true
import 'package:json_annotation/json_annotation.dart';
part 'weather.g.dart';

@JsonSerializable()
class Weather {
  const Weather ({
    required this.temperature, 
    required this.weatherCode,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  final double temperature;
  @JsonKey(name: 'weathercode')
  final double weatherCode;
}