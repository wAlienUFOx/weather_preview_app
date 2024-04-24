import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.title,
    this.icon,
    this.backgroundColor = const Color(0xffF2F2F2),
    this.overlayColor,
    this.borderRadius,
    this.textStyle,
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    this.startAlignment = false,
    required this.onPressed,
  });

  final String title;
  final Icon? icon;
  final Color backgroundColor;
  final Color? overlayColor;
  final BorderRadius? borderRadius;
  final TextStyle? textStyle;
  final EdgeInsets padding;
  final bool startAlignment;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        overlayColor: MaterialStateProperty.all(overlayColor),
        padding: MaterialStateProperty.all(padding),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: borderRadius ?? BorderRadius.zero)),
      ),
      child: Row(
        mainAxisSize: startAlignment ? MainAxisSize.max : MainAxisSize.min,
        children: [
          if (icon != null) icon!,
          if (icon != null) const SizedBox(width: 4),
          Text(
            title,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}