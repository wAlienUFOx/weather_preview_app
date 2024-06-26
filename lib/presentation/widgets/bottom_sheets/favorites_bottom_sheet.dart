import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_preview_app/data/models/weather/weather_model.dart';
import 'package:weather_preview_app/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_preview_app/presentation/widgets/bottom_sheets/app_bottom_sheet.dart';
import 'package:weather_preview_app/presentation/widgets/painters/accent_subtitle.dart';
import '../../blocs/favorites_bloc/favorites_bloc.dart';
import '../../theme/colors.dart';
import '../tiles/favotites_list_tile.dart';

class FavoritesBottomSheet extends StatelessWidget {
  const FavoritesBottomSheet({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
      title: 'Favorites',
      size: size,
      children: [
        const SizedBox(height: 28),
        const AccentSubtitle(title: 'Locations'),
        const SizedBox(height: 8),
        Expanded(
          child: Container(
            width: double.infinity,
            color: ColorsTheme.of(context).secondaryPressedSF,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: SingleChildScrollView(
              child: buildPlaces(context: context),
            ),
          ),
        )
      ],
    );
  }

  Widget buildPlaces({required BuildContext context}) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(builder: (context, favoritesState) {
      return Column(
        children: favoritesState.favoritesPlaces!
            .map((place) => FavoritesListTile(
                  place: place,
                  onTap: () {
                    Navigator.of(context).pop();
                    context.read<WeatherBloc>().add(WeatherEvent.getWeather(lat: place.lat, long: place.lon));
                  },
                  onDelete: () {
                    context.read<FavoritesBloc>().add(FavoritesEvent.remove(
                        name: place.name, coordinates: Coordinates(lat: place.lat, lon: place.lon)));
                  },
                ))
            .toList(),
      );
    });
  }
}
