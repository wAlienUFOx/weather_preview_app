import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_preview_app/presentation/widgets/buttons/app_text_button.dart';

import '../../blocs/auth_bloc/auth_bloc.dart';
import '../../theme/colors.dart';
import '../../theme/texts.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsTheme.of(context).secondarySF,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      title: Text(
        'Logout',
        textAlign: TextAlign.center,
        style: TextsTheme.of(context).heading3(ColorsTheme.of(context).primaryInvertedText),
      ),
      titlePadding: const EdgeInsets.all(16).copyWith(bottom: 2),
      content: Text(
        'Are you shure you want to logout?',
        textAlign: TextAlign.center,
        style: TextsTheme.of(context).labelReg(ColorsTheme.of(context).primaryInvertedText),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      actions: [
        SizedBox(
          width: double.infinity,
          child: AppTextButton(
            title: 'Yes',
            backgroundColor: ColorsTheme.of(context).primarySF,
            overlayColor: ColorsTheme.of(context).primaryPressedSF,
            borderRadius: BorderRadius.circular(8),
            textStyle: TextsTheme.of(context).body2(ColorsTheme.of(context).primaryInvertedText),
            padding: const EdgeInsets.symmetric(vertical: 10),
            onPressed: ()  {
              context.read<AuthBloc>().add(const AuthEvent.deAuthorize());
            },
          ),
        ),
      ],
      actionsPadding: const EdgeInsets.all(16),
    );
  }
}