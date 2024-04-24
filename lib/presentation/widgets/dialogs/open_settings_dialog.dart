import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather_preview_app/presentation/widgets/buttons/app_text_button.dart';

import '../../theme/colors.dart';
import '../../theme/texts.dart';

class OpenSettingsDialog extends StatelessWidget {
  const OpenSettingsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsTheme.of(context).secondarySF,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
        'You permanently disabled location access',
        textAlign: TextAlign.center,
        style: TextsTheme.of(context).heading3(ColorsTheme.of(context).primaryInvertedText),
      ),
      titlePadding: const EdgeInsets.all(16).copyWith(bottom: 2),
      content: Text(
        'If you want to get your location automatically, you need to enable it in the app settings',
        textAlign: TextAlign.center,
        style: TextsTheme.of(context).labelReg(ColorsTheme.of(context).primaryInvertedText),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      actions: [
        SizedBox(
          width: double.infinity,
          child: AppTextButton(
            title: 'Open app settings',
            backgroundColor: ColorsTheme.of(context).primarySF,
            overlayColor: ColorsTheme.of(context).primaryPressedSF,
            borderRadius: BorderRadius.circular(8),
            textStyle: TextsTheme.of(context).body2(ColorsTheme.of(context).primaryInvertedText),
            padding: const EdgeInsets.symmetric(vertical: 10),
            onPressed: () async {
              context.pop();
              await openAppSettings();
            },
          ),
        ),
      ],
      actionsPadding: const EdgeInsets.all(16),
    );
  }
}