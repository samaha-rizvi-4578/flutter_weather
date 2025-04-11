// location, temperature, condition properties
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'weather.g.dart';

enum WeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  unknown,
}

@JsonSerializable()
class Weather extends Equatable {
  const Weather ({
    required this.location,
    required this.temperature,
    required this.condition,
  });

  facotry Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

  Map<String,  dynamic> toJson() => _$WeatherToJson(this);

  final String location;
  final double temperature;
  final WeatherCondition condition;

  @override
  List<Object> get props => [location, temperature, condition]; 
}