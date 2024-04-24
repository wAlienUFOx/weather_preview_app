import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_preview_app/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:weather_preview_app/presentation/widgets/buttons/app_text_button.dart';
import 'package:weather_preview_app/presentation/widgets/text_fields/phone_field.dart';

import '../../navigation/app_routes.dart';
import '../../theme/colors.dart';
import '../../theme/texts.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController controllerPhone = TextEditingController();
  bool inCorrectInput = false;

  @override
  void initState() {
    controllerPhone.addListener(() => setState(() => inCorrectInput = false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.of(context).secondarySF,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, authState) {
            if (authState.isAuthorized) context.go(AppRoutes.home);
          },
          builder: (context, authState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone number',
                  textAlign: TextAlign.center,
                  style: TextsTheme.of(context).heading2(ColorsTheme.of(context).primaryInvertedText),
                ),
                const SizedBox(height: 8),
                Text(
                  'To login input your phone number',
                  style: TextsTheme.of(context).body2(ColorsTheme.of(context).primaryInvertedText),
                ),
                const SizedBox(height: 32),
                PhoneField(controller: controllerPhone, inCorrectInput: inCorrectInput),
                if (inCorrectInput)
                  Text(
                    'Incorrect number',
                    style: TextsTheme.of(context).labelReg(ColorsTheme.of(context).negativeText),
                  ),
                const SizedBox(height: 32),
                IgnorePointer(
                  ignoring: !controllerPhone.text.isNotEmpty,
                  child: SizedBox(
                    width: double.infinity,
                    child: AppTextButton(
                      title: 'Login',
                      backgroundColor: controllerPhone.text.isNotEmpty
                          ? ColorsTheme.of(context).primarySF
                          : ColorsTheme.of(context).primaryInactiveSF,
                      overlayColor: ColorsTheme.of(context).primaryPressedSF,
                      borderRadius: BorderRadius.circular(8),
                      textStyle: TextsTheme.of(context).body1(ColorsTheme.of(context).primaryInvertedText),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      onPressed: checkInputCorrect()
                          ? () {
                              String phone = controllerPhone.text.replaceAll(RegExp(r'\D'), '');
                              if (!RegExp(r'^\d').hasMatch(phone)) {
                                phone = phone.substring(1);
                              }
                              phone = phone.substring(1);
                              context.read<AuthBloc>().add(AuthEvent.authorize(phone: phone));
                            }
                          : () => setState(() => inCorrectInput = true),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  bool checkInputCorrect() {
    String phone = controllerPhone.text.replaceAll(RegExp(r'\D'), '');
    if (phone.startsWith('+')) return phone.length == 12;
    return phone.length == 11;
  }
}
