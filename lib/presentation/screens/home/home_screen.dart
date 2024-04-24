import 'package:flutter/material.dart';
import 'package:weather_preview_app/presentation/widgets/app_bars/main_app_bar.dart';

import '../../theme/colors.dart';
import '../../widgets/map_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.of(context).primaryBG,
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: const MainAppBar(height: 80),
      body: const MapWidget(),
    );
  }
}
