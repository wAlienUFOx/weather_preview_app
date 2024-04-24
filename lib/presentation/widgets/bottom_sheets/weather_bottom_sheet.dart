import 'package:flutter/material.dart';
import 'package:weather_preview_app/data/models/weather/weather_model.dart';

class WeatherBottomSheet extends StatelessWidget {
  const WeatherBottomSheet({super.key, required this.weather, required this.name, required this.onClose});

  final WeatherModel weather;
  final String name;
  final void Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
