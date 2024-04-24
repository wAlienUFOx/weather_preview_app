import 'package:flutter/material.dart';

import '../../theme/colors.dart';


class BaseCircularProgressIndicator extends StatelessWidget {
  const BaseCircularProgressIndicator({super.key, this.size = 66.0, this.strokeWidth = 10.0});

  final double size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.square(
        dimension: size,
        child: CircularProgressIndicator(
          color: ColorsTheme.of(context).primarySF,
          backgroundColor: ColorsTheme.of(context).primaryInactiveSF,
          strokeWidth: strokeWidth,
        ),
      ),
    );
  }
}
