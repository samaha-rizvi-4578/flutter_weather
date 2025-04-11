// store data returnd by waeterh api
// https://api.open-meteo.com/v1/forecast?latitude=24.8608&longitude=67.0104&current_weather=true
class Weather {
  const Weather ({
    required this.temperature, 
    required this.weatherCode,
  });
  final double temperature;
  final int weatherCode;
}