import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_preview_app/data/models/weather/weather_model.dart';
import 'package:weather_preview_app/presentation/widgets/buttons/app_text_button.dart';
import 'package:weather_preview_app/presentation/widgets/tiles/weather_data_tile.dart';

import '../../theme/colors.dart';
import '../../theme/texts.dart';
import '../painters/grabber_widget.dart';

class WeatherBottomSheet extends StatelessWidget {
  const WeatherBottomSheet({super.key, required this.weather, required this.name, required this.onClose});

  final WeatherModel weather;
  final String name;
  final void Function() onClose;

  @override
  Widget build(BuildContext context) {
    DraggableScrollableController draggableScrollableController = DraggableScrollableController();
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        DraggableScrollableSheet(
          maxChildSize: 0.5,
          minChildSize: 0.3,
          initialChildSize: 0.3,
          snap: true,
          expand: false,
          controller: draggableScrollableController,
          builder: (context, scrollController) {
            return ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: Scaffold(
                backgroundColor: ColorsTheme.of(context).secondarySF,
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(double.maxFinite),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        children: [
                          const SizedBox(height: 7),
                          const GrabberWidget(),
                          const SizedBox(height: 20),
                          buildTitleBloc(context: context, weather: weather, name: name),
                        ],
                      ),
                    ),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      WeatherDataTile(title: 'Local time', data: convertUnixDateToString(weather.dt)),
                      WeatherDataTile(title: 'Pressure', data: '${weather.main.pressure} mmHg'),
                      WeatherDataTile(title: 'Wind speed', data: '${weather.wind.speed} m/s'),
                      WeatherDataTile(title: 'Lat', data: '${weather.coord.lat}'),
                      WeatherDataTile(title: 'Lon', data: '${weather.coord.lon}'),
                      WeatherDataTile(title: 'Main data', data: weather.weather.first.main),
                      WeatherDataTile(title: 'Weather id', data: '${weather.weather.first.id}'),
                      WeatherDataTile(title: 'IconTag', data: weather.weather.first.icon),
                      const SizedBox(height: 88),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        buildButton(context: context, weather: weather, name: name),
      ],
    );
  }

  Widget buildTitleBloc({
    required BuildContext context,
    required WeatherModel weather,
    required String name,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextsTheme.of(context).heading1(ColorsTheme.of(context).primaryInvertedText),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    weather.weather.first.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextsTheme.of(context).heading2(ColorsTheme.of(context).primaryInvertedText),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 13),
              child: Image.asset('assets/images/${weather.weather.first.icon}.png'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onClose,
              child: Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 5),
                child: Icon(Icons.clear, color: ColorsTheme.of(context).primaryInvertedIcon),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Text(
              '${weather.main.temp.round().toString()}\u2103',
              style: TextsTheme.of(context).heading2(ColorsTheme.of(context).primaryInvertedText),
            ),
            const SizedBox(width: 20),
            Text(
              'Feels like: ${weather.main.feelsLike.round().toString()}\u2103',
              style: TextsTheme.of(context).body2(ColorsTheme.of(context).primaryInvertedText),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 2, color: ColorsTheme.of(context).accentBorder),
            ),
          ),
          padding: const EdgeInsets.only(bottom: 4),
          child: Text(
            'Data',
            style: TextsTheme.of(context).body1(ColorsTheme.of(context).accentText),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget buildButton({
    required BuildContext context,
    required WeatherModel weather,
    required String name,
  }) {
    //return BlocBuilder<FavoritesBloc, FavoritesState>(
    //builder: (context, favoritesState) {
    bool inFavorites = true; //favoritesState.favoritesRoutes!.contains(routeId);
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 24, 24),
      child: AppTextButton(
        title: inFavorites ? 'Remove' : 'Add',
        icon: Icon(Icons.favorite,
            color: inFavorites ? ColorsTheme.of(context).accentIcon : ColorsTheme.of(context).secondarySF),
        backgroundColor: ColorsTheme.of(context).tetriarySF,
        textStyle: TextsTheme.of(context).body2(ColorsTheme.of(context).primaryText),
        borderRadius: BorderRadius.circular(12),
        onPressed: () {
          //inFavorites
          //? BlocProvider.of<FavoritesBloc>(context).add(FavoritesEvent.remove(routeId: routeId))
          //: BlocProvider.of<FavoritesBloc>(context).add(FavoritesEvent.add(routeId: routeId));
        },
      ),
    );
    //},
    //);
  }

  String convertUnixDateToString(int unixTimestamp) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);
    String formattedDate =
        '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
    return formattedDate;
  }
}
