import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_preview_app/presentation/widgets/buttons/app_text_button.dart';

import '../../../data/data_sources/local/shared_prefs.dart';
import '../../blocs/auth_bloc/auth_bloc.dart';
import '../../navigation/app_routes.dart';
import '../../theme/colors.dart';
import '../../theme/texts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController pageController = PageController();
  final List<String> titles = [
    'Use search',
    'Interact with the map',
    'Save favorites',
  ];
  final List<String> subtitles = [
    'Search your location by name',
    'Use long press to choose location on map',
    'Save your favorite locations',
  ];
  final List<String> buttonTitles = ['Next', 'Next', 'Login'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.of(context).secondarySF,
      appBar: AppBar(
        backgroundColor: ColorsTheme.of(context).secondarySF,
        actions: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              SharedPrefs.isShownOnboard = true;
              context.read<AuthBloc>().state.isAuthorized ? context.go(AppRoutes.home) : context.go(AppRoutes.auth);
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0).copyWith(right: 30),
              child: Icon(Icons.clear, color: ColorsTheme.of(context).primaryInvertedIcon),
            ),
          )
        ],
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: 3,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onPanEnd: (DragEndDetails details) {
              if (details.velocity.pixelsPerSecond.dx < 0 && index < 4) {
                switch (index) {
                  case 0:
                    func0();
                  case 1:
                    func1();
                  case 2:
                    func2();
                }
              }
            },
            child: SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 84,
                      child: Text(
                        titles[index],
                        textAlign: TextAlign.center,
                        style: TextsTheme.of(context).heading1(ColorsTheme.of(context).primaryInvertedText),
                      ),
                    ),
                    const SizedBox(height: 48),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 400),
                      child: Image.asset('assets/images/$index.png'),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          subtitles[index],
                          style: TextsTheme.of(context).body2(ColorsTheme.of(context).primaryInvertedText),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDot(index == 0),
                        buildDot(index == 1),
                        buildDot(index == 2),
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: AppTextButton(
                        title: buttonTitles[index],
                        backgroundColor: ColorsTheme.of(context).primarySF,
                        overlayColor: ColorsTheme.of(context).primaryPressedSF,
                        borderRadius: BorderRadius.circular(8),
                        textStyle: TextsTheme.of(context).body1(ColorsTheme.of(context).primaryInvertedText),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        onPressed: () {
                          switch (index) {
                            case 0:
                              func0();
                            case 1:
                              func1();
                            case 2:
                              func2();
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildDot(bool active) {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorsTheme.of(context).accentIcon.withOpacity(active ? 1.0 : 0.3),
      ),
    );
  }

  Future<void> func0() async {
    await pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  Future<void> func1() async {
    await pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }

  void func2() {
    SharedPrefs.isShownOnboard = true;
    context.go(AppRoutes.auth);
  }
}
