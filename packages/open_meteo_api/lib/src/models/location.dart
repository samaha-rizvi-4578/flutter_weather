// store data returned by location api
// https://geocoding-api.open-meteo.com/v1/search?name=karachi&count=1

class Location {
  const Location({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
  });
  final int id;
  final String name;
  final double latitude;
  final double longitude;
}