import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_preview_app/injection_container.dart';
import 'package:weather_preview_app/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:weather_preview_app/presentation/blocs/favorites_bloc/favorites_bloc.dart';
import 'package:weather_preview_app/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_preview_app/presentation/navigation/app_routes.dart';
import 'package:weather_preview_app/presentation/screens/auth/auth_screen.dart';
import 'package:weather_preview_app/presentation/screens/home/home_screen.dart';
import 'package:weather_preview_app/presentation/screens/welcome/welcome_screen.dart';
import 'package:weather_preview_app/presentation/theme/custom_theme.dart';

import 'data/data_sources/local/shared_prefs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefs.init();
  await dotenv.load(fileName: '.env');

  runApp(const WeatherApp());
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherBloc>(create: (context) => InjectionContainer.weatherBloc),
        BlocProvider<AuthBloc>(create: (context) => InjectionContainer.authBloc),
        BlocProvider<FavoritesBloc>(create: (context) => InjectionContainer.favoritesBloc),
      ],
      child: Builder(builder: (context) {
        return ThemeProvider(
          child: MaterialApp(
            routes: {
              AppRoutes.home: (context) => const HomeScreen(),
              AppRoutes.auth: (context) => const AuthScreen(),
              AppRoutes.welcome: (context) => const WelcomeScreen(),
            },
            initialRoute: !SharedPrefs.isShownOnboard
                ? AppRoutes.welcome
                : SharedPrefs.userNumber != null
                    ? AppRoutes.home
                    : AppRoutes.auth,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
          ),
        );
      }),
    );
  }
}
