import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_preview_app/data/models/weather/weather_model.dart';
import 'package:weather_preview_app/presentation/blocs/weather_bloc/weather_bloc.dart';
import '../../blocs/favorites_bloc/favorites_bloc.dart';
import '../../theme/colors.dart';
import '../../theme/texts.dart';
import '../painters/grabber_widget.dart';
import '../tiles/favotites_list_tile.dart';

class FavoritesBottomSheet extends StatefulWidget {
  const FavoritesBottomSheet({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<FavoritesBottomSheet> createState() => _FavoritesBottomSheetState();
}

class _FavoritesBottomSheetState extends State<FavoritesBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        color: ColorsTheme.of(context).secondarySF,
      ),
      margin: EdgeInsets.only(top: widget.size.height * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 7),
          const GrabberWidget(),
          const SizedBox(height: 20),
          buildTitleBloc(context),
          const SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 2, color: ColorsTheme.of(context).accentBorder)),
              ),
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                'Locations',
                style: TextsTheme.of(context).label1(ColorsTheme.of(context).accentText),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Container(
              color: ColorsTheme.of(context).secondaryPressedSF,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: SingleChildScrollView(
                child: buildPlaces(context: context),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildTitleBloc(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              'Favorites',
              style: TextsTheme.of(context).heading2(ColorsTheme.of(context).primaryInvertedText),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: context.pop,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 5),
              child: Icon(Icons.clear, color: ColorsTheme.of(context).primaryInvertedIcon),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPlaces({required BuildContext context}) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(builder: (context, favoritesState) {
      return Column(
        children: favoritesState.favoritesPlaces!
            .map((place) => FavoritesListTile(
                  place: place,
                  onTap: () {
                    context.pop();
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
