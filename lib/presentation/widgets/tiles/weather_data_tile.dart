import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/texts.dart';

class WeatherDataTile extends StatelessWidget {
  const WeatherDataTile({super.key, required this.title, required this.data});

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: ColorsTheme.of(context).accentBorder),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextsTheme.of(context).body1(ColorsTheme.of(context).accentText),
          ),
          Text(
            data,
            style: TextsTheme.of(context).body1(ColorsTheme.of(context).accentText),
          ),
        ],
      ),
    );
  }
}
