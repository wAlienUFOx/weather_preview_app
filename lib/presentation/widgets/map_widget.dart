import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather_preview_app/data/models/weather/weather_model.dart';
import 'package:weather_preview_app/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_preview_app/presentation/theme/colors.dart';
import 'package:weather_preview_app/presentation/widgets/bottom_sheets/weather_bottom_sheet.dart';
import 'package:weather_preview_app/presentation/widgets/dialogs/logout_dialog.dart';
import 'package:weather_preview_app/presentation/widgets/dialogs/open_settings_dialog.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:geolocator/geolocator.dart';

import 'buttons/app_floating_button.dart';
import 'indicators/base_circular_progress_indicator.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  GlobalKey mapKey = GlobalKey();
  late final YandexMapController mapController;
  bool loadingLocation = false;
  List<MapObject> mapObjects = [];
  final offset1 = Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0));
  bool showBottomSheet = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherBloc, WeatherState>(
      listener: (context, weatherState) async {
        if (weatherState.weather != null) {
          await _getPoint(weatherState.weather!.coord);
          BoundingBox boundingBox = BoundingBox(
            southWest: Point(
                latitude: weatherState.weather!.coord.lat - 0.2, longitude: weatherState.weather!.coord.lon - 0.2),
            northEast: Point(
                latitude: weatherState.weather!.coord.lat + 0.2, longitude: weatherState.weather!.coord.lon + 0.2),
          );
          mapController.moveCamera(CameraUpdate.newGeometry(Geometry.fromBoundingBox(boundingBox)));
          showBottomSheet = true;
          setState(() {});
        }
      },
      builder: (context, weatherState) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            YandexMap(
              key: mapKey,
              onMapCreated: (controller) {
                mapController = controller;
              },
              mapObjects: mapObjects,
              onUserLocationAdded: (UserLocationView view) async {
                return view.copyWith(
                  accuracyCircle: view.accuracyCircle.copyWith(
                    fillColor: Colors.black.withOpacity(0.2),
                    strokeWidth: 1,
                    strokeColor: Colors.black,
                  ),
                );
              },
              logoAlignment: const MapAlignment(
                horizontal: HorizontalAlignment.center,
                vertical: VerticalAlignment.bottom,
              ),
              onMapLongTap: (point) {
                addWeatherEvent(lat: point.latitude, long: point.longitude);
              },
            ),
            if (weatherState.isLoadingWeather) const BaseCircularProgressIndicator(),
            Padding(
              padding: const EdgeInsets.all(16.0).copyWith(
                  bottom: 16 + MediaQuery.of(context).size.height * 0.01, top: 16 + MediaQuery.of(context).padding.top),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: AppFloatingButton(
                      icon: Icon(Icons.logout, color: ColorsTheme.of(context).accentIcon),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => const LogoutDialog(),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: AppFloatingButton(
                      icon: Icon(Icons.favorite, color: ColorsTheme.of(context).accentIcon),
                      onTap: () {
                        // final size = MediaQuery.sizeOf(context);
                        // showModalBottomSheet(
                        //   context: context,
                        //   isScrollControlled: true,
                        //   elevation: 0,
                        //   backgroundColor: Colors.transparent,
                        //   shape: const Border(),
                        //   useRootNavigator: true,
                        //   builder: (context) {
                        //     return FavoritesBottomSheet(size: size);
                        //   },
                        // );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: AppFloatingButton(
                      icon: Icon(Icons.location_on, color: ColorsTheme.of(context).accentIcon),
                      onTap: () async {
                        if (await locationPermissionGranted) {
                          setState(() => loadingLocation = true);
                          final position = await Geolocator.getCurrentPosition();
                          setState(() => loadingLocation = false);
                          addWeatherEvent(lat: position.latitude, long: position.longitude);
                        }
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppFloatingButton(
                          icon: Icon(Icons.add, color: ColorsTheme.of(context).accentIcon),
                          onTap: () => mapController.moveCamera(
                            CameraUpdate.zoomIn(),
                            animation: const MapAnimation(duration: 0.3, type: MapAnimationType.smooth),
                          ),
                        ),
                        const SizedBox(height: 15),
                        AppFloatingButton(
                          icon: Icon(Icons.remove, color: ColorsTheme.of(context).accentIcon),
                          onTap: () => mapController.moveCamera(
                            CameraUpdate.zoomOut(),
                            animation: const MapAnimation(duration: 0.3, type: MapAnimationType.smooth),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AnimatedSwitcher(
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SlideTransition(
                  position: animation.drive(offset1),
                  child: child,
                );
              },
              duration: const Duration(milliseconds: 300),
              child: showBottomSheet && weatherState.weather != null
                  ? WeatherBottomSheet(
                      weather: weatherState.weather!,
                      name: weatherState.name!,
                      onClose: () {
                        setState(() {
                          mapObjects.clear();
                          showBottomSheet = false;
                        });
                      },
                    )
                  : const SizedBox.shrink(),
            ),
            if (loadingLocation)
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(0.3),
                child: const BaseCircularProgressIndicator(),
              )
          ],
        );
      },
    );
  }

  void addWeatherEvent({required double lat, required double long}) {
    context.read<WeatherBloc>().add(WeatherEvent.getWeather(lat: lat, long: long));
  }

  Future<bool> get locationPermissionGranted async {
    if (await Permission.location.isPermanentlyDenied) {
      showDeniedLocationDialog();
      return false;
    }
    return await Permission.location.request().isGranted;
  }

  showDeniedLocationDialog() {
    showDialog(
      context: context,
      builder: (context) => const OpenSettingsDialog(),
    );
  }

  /// Метод для генерауии точки на карте
  Future<void> _getPoint(Coordinates coordinates) async {
    mapObjects.clear();
    mapObjects.add(PlacemarkMapObject(
      mapId: MapObjectId('coord ${coordinates.lat} ${coordinates.lon}'),
      point: Point(latitude: coordinates.lat, longitude: coordinates.lon),
      opacity: 1,
      icon: PlacemarkIcon.single(
        PlacemarkIconStyle(
          image: BitmapDescriptor.fromBytes(await _drawPointIcon()),
          scale: 1,
        ),
      ),
    ));
  }

  Future<Uint8List> _drawPointIcon() async {
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    const icon = Icons.location_on;
    final color = ColorsTheme.of(context).accentIcon;
    const size = 144.0;

    final paragraphBuilder = ui.ParagraphBuilder(ui.ParagraphStyle(
      fontFamily: icon.fontFamily,
    ))
      ..pushStyle(ui.TextStyle(
        color: color,
        fontSize: size,
      ))
      ..addText(String.fromCharCode(icon.codePoint));

    final paragraph = paragraphBuilder.build()..layout(const ui.ParagraphConstraints(width: size));

    canvas.drawParagraph(paragraph, Offset.zero);

    final image = await recorder.endRecording().toImage(paragraph.width.toInt() + 2, paragraph.height.toInt());
    final pngBytes = await image.toByteData(format: ui.ImageByteFormat.png);

    return pngBytes!.buffer.asUint8List();
  }
}
