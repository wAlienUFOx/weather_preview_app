import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class AppFloatingButton extends StatelessWidget {
  const AppFloatingButton({
    super.key,
    required this.icon,
    this.onTap,
    this.color,
  });

  final Icon icon;
  final Color? color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsTheme.of(context).secondarySF),
        overlayColor: MaterialStateProperty.all(ColorsTheme.of(context).secondaryPressedSF),
        padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
        ),
      ),
      child: icon,
    );
  }
}
