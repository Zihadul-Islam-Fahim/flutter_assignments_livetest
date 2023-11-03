import 'package:flutter/material.dart';
import 'WeatherData.dart';

class WeatherInfoScreen extends StatelessWidget {
  final List<WeatherData> weatherData = [
    WeatherData(
      city: "New York",
      temperature: 20,
      condition: "Clear",
      humidity: 60,
      windSpeed: 5.5,
    ),
    WeatherData(
      city: "Los Angeles",
      temperature: 25,
      condition: "Sunny",
      humidity: 50,
      windSpeed: 6.8,
    ),
    WeatherData(
      city: "London",
      temperature: 15,
      condition: "Partly Cloudy",
      humidity: 70,
      windSpeed: 4.2,
    ),
    WeatherData(
      city: "Tokyo",
      temperature: 28,
      condition: "Rainy",
      humidity: 75,
      windSpeed: 8.0,
    ),
    WeatherData(
      city: "Sydney",
      temperature: 22,
      condition: "Cloudy",
      humidity: 55,
      windSpeed: 7.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: weatherData.length,
      itemBuilder: (context, index) {
        final data = weatherData[index];
        return ListTile(
          title: Text(data.city),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Temperature: ${data.temperature}°C'),
              Text('Condition: ${data.condition}'),
              Text('Humidity: ${data.humidity}%'),
              Text('Wind Speed: ${data.windSpeed} km/h'),
            ],
          ),
        );
      },
    );
  }
}