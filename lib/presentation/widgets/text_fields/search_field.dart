import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_preview_app/presentation/blocs/weather_bloc/weather_bloc.dart';
import 'package:weather_preview_app/presentation/theme/colors.dart';
import 'package:weather_preview_app/presentation/theme/texts.dart';
import 'package:weather_preview_app/presentation/widgets/indicators/base_circular_progress_indicator.dart';

import '../../../data/models/weather/location_model.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late final TextEditingController searchController = TextEditingController();
  late final FocusNode searchFocusNode = FocusNode();
  GlobalKey globalKey = GlobalKey();
  final LayerLink layerLink = LayerLink();
  OverlayEntry? overlayEntry;

  OutlineInputBorder get border {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.transparent,
        width: 0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherBloc, WeatherState>(listener: (context, weatherState) {
      if (weatherState.locations != null) getLocationPicker(weatherState.locations!);
    }, builder: (context, weatherState) {
      return CompositedTransformTarget(
        link: layerLink,
        child: IgnorePointer(
          ignoring: weatherState.isLoadingLocations,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              TextField(
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                style: TextsTheme.of(context).labelReg(ColorsTheme.of(context).primaryText),
                controller: searchController,
                focusNode: searchFocusNode,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorsTheme.of(context).tetriarySF,
                  hintStyle: TextsTheme.of(context).labelReg(ColorsTheme.of(context).secondaryText),
                  hintText: 'Find location',
                  border: border,
                  enabledBorder: border,
                  focusedBorder: border,
                  disabledBorder: border,
                  errorBorder: border,
                  contentPadding: const EdgeInsets.all(12).copyWith(right: 50),
                ),
                onSubmitted: (value) {
                  if (value.trim().isEmpty) {
                    searchFocusNode.unfocus();
                    searchController.text = '';
                    return;
                  }
                  context.read<WeatherBloc>().add(WeatherEvent.getLocations(name: searchController.text));
                },
              ),
              Positioned(
                right: 0,
                child: searchButton(weatherState.isLoadingLocations),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget searchButton(bool loading) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          width: 48,
          height: 48,
          child: Center(
              child: loading
                  ? const BaseCircularProgressIndicator(size: 24, strokeWidth: 4)
                  : Icon(Icons.search, color: ColorsTheme.of(context).accentIcon)),
        ),
        onTap: () {
          if (searchController.text.isEmpty) return;
          context.read<WeatherBloc>().add(WeatherEvent.getLocations(name: searchController.text));
        },
      );

  void getLocationPicker(List<LocationModel> locations) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var pickerPosition = renderBox.localToGlobal(Offset.zero);

    OverlayState? overlayState = Overlay.of(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      globalKey;
    });
    overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          ModalBarrier(onDismiss: () => overlayEntry?.remove()),
          Positioned(
            width: MediaQuery.of(context).size.width,
            child: CompositedTransformFollower(
              link: layerLink,
              targetAnchor: Alignment.bottomCenter,
              followerAnchor: Alignment.topCenter,
              showWhenUnlinked: false,
              offset: const Offset(0, 12),
              child: ClipRect(
                child: Material(
                  type: MaterialType.transparency,
                  child: Container(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height -
                            pickerPosition.dy -
                            renderBox.size.height -
                            32 -
                            MediaQuery.of(context).padding.bottom),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: ColorsTheme.of(context).secondaryBG,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: locations
                            .map((variant) => SizedBox(
                                  width: double.infinity,
                                  child: TextButton(
                                    onPressed: () {
                                      context.read<WeatherBloc>().add(WeatherEvent.getWeather(
                                            lat: variant.lat,
                                            long: variant.lon,
                                            name: variant.name,
                                          ));
                                      overlayEntry!.remove();
                                      setState(() {});
                                    },
                                    style: ButtonStyle(
                                      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
                                      shape: MaterialStateProperty.all(
                                          const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        variant.name,
                                        style: TextsTheme.of(context).body2(ColorsTheme.of(context).primaryText),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    overlayState.insert(overlayEntry!);
  }
}
