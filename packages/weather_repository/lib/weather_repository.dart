// barrel file forlibrary weather_repository;

library weather_repository;

export 'src/models/models.dart';
export 'src/weather_repository.dart';

//  The goal of the WeatherRepository is to separate the “what” from the “how” — in other words, we want to have a way to fetch weather for a given city, but don’t care about how or where that data is coming from.