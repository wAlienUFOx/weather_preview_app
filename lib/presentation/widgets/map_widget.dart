import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather_preview_app/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_preview_app/presentation/theme/colors.dart';
import 'package:weather_preview_app/presentation/widgets/bottom_sheets/weather_bottom_sheet.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

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
  bool isListenLocation = false;
  bool loadingLocation = false;
  List<MapObject> mapObjects = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherBloc, WeatherState>(listener: (context, weatherState) {
      if (weatherState.weather != null) {
        //show b_s
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          useRootNavigator: true,
          backgroundColor: ColorsTheme.of(context).primaryBG,
          barrierColor: Colors.transparent,
          builder: (context) {
            return WeatherBottomSheet(
              weather: weatherState.weather!,
              name: weatherState.name!,
              onClose: () {},
            );
          },
        );
      }
    }, builder: (context, weatherState) {
      return Stack(
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
          ),
          if (weatherState.isLoadingWeather) const BaseCircularProgressIndicator(),
          Padding(
            padding: const EdgeInsets.all(16.0).copyWith(
                bottom: 16 + MediaQuery.of(context).size.height * 0.01, top: 16 + MediaQuery.of(context).padding.top),
            child: Stack(
              children: [
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
                      // setState(() {
                      //   isListenLocation = !isListenLocation;
                      //   loadingLocation = true;
                      // });
                      // final mediaQuery = MediaQuery.of(context);
                      // final height = mapKey.currentContext!.size!.height * mediaQuery.devicePixelRatio;
                      // final width = mapKey.currentContext!.size!.width * mediaQuery.devicePixelRatio;
                      // if (await locationPermissionGranted) {
                      //   await mapController.toggleUserLayer(
                      //     visible: isListenLocation,
                      //     autoZoomEnabled: false,
                      //     headingEnabled: false,
                      //     anchor: UserLocationAnchor(
                      //       course: Offset(0.5 * width, 0.5 * height),
                      //       normal: Offset(0.5 * width, 0.5 * height),
                      //     ),
                      //   );
                      //   setState(() => loadingLocation = false);
                      // }
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
          if (loadingLocation)
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.3),
              //child: const BaseCircularProgressIndicator(),
            )
        ],
      );
    });
  }

  Future<bool> get locationPermissionGranted async {
    if (await Permission.location.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    }
    return await Permission.location.request().isGranted;
  }

  void clearStops() {
    var tmp = List.from(mapObjects);
    for (var element in tmp) {
      if (element.mapId.value.contains('stop')) {
        mapObjects.remove(element);
      }
    }
  }

// /// Метод для генерауии остановок
// void _getStops(List<Stop> stops) {
//   clearStops();
//   for (var stop in stops) {
//     mapObjects.add(PlacemarkMapObject(
//       mapId: MapObjectId('stop ${stop.id}'),
//       point: Point(latitude: stop.lat, longitude: stop.lng),
//       opacity: 1,
//       icon: PlacemarkIcon.single(
//         PlacemarkIconStyle(
//           image: BitmapDescriptor.fromAssetImage('assets/images/stop.png'),
//           anchor: const Offset(0.5, 0.5),
//         ),
//       ),
//     ));
//   }
// }
}
