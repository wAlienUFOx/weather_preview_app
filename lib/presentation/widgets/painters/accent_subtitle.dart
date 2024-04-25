import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../theme/texts.dart';

class AccentSubtitle extends StatelessWidget {
  const AccentSubtitle({super.key, required this.title, this.horizontalPadding = 16});

  final String title;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: ColorsTheme.of(context).accentBorder)),
        ),
        padding: const EdgeInsets.only(bottom: 4),
        child: Text(
          title,
          style: TextsTheme.of(context).label1(ColorsTheme.of(context).accentText),
        ),
      ),
    );
  }
}
