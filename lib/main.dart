import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_preview_app/injection_container.dart';
import 'package:weather_preview_app/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:weather_preview_app/presentation/blocs/favorites_bloc/favorites_bloc.dart';
import 'package:weather_preview_app/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_preview_app/presentation/navigation/go_router_configuration.dart';
import 'package:weather_preview_app/presentation/theme/custom_theme.dart';

import 'data/data_sources/local/shared_prefs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefs.sharedPreferences = await SharedPreferences.getInstance();
  await dotenv.load(fileName: '.env');
  await initializeDependencies();

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
        BlocProvider<WeatherBloc>(create: (context) => sl()),
        BlocProvider<AuthBloc>(create: (context) => sl()),
        BlocProvider<FavoritesBloc>(create: (context) => sl()),
      ],
      child: Provider(
        create: (context) => GoRouterConfiguration(authBloc: BlocProvider.of<AuthBloc>(context)),
        child: Builder(builder: (context) {
          return ThemeProvider(
            child: MaterialApp.router(
              routerConfig: Provider.of<GoRouterConfiguration>(context).router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
            ),
          );
        }),
      ),
    );
  }
}
