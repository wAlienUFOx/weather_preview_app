import 'package:flutter/material.dart';
import 'package:weather_preview_app/presentation/widgets/buttons/app_text_button.dart';

import '../../theme/colors.dart';
import '../../theme/texts.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonTitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String buttonTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsTheme.of(context).secondarySF,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextsTheme.of(context).heading3(ColorsTheme.of(context).primaryInvertedText),
      ),
      titlePadding: const EdgeInsets.all(16).copyWith(bottom: 2),
      content: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: TextsTheme.of(context).labelReg(ColorsTheme.of(context).primaryInvertedText),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      actions: [
        SizedBox(
          width: double.infinity,
          child: AppTextButton(
            title: buttonTitle,
            backgroundColor: ColorsTheme.of(context).primarySF,
            overlayColor: ColorsTheme.of(context).primaryPressedSF,
            borderRadius: BorderRadius.circular(8),
            textStyle: TextsTheme.of(context).body2(ColorsTheme.of(context).primaryInvertedText),
            padding: const EdgeInsets.symmetric(vertical: 10),
            onPressed: onTap,
          ),
        ),
      ],
      actionsPadding: const EdgeInsets.all(16),
    );
  }
}
