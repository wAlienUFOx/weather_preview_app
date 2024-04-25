import 'package:flutter/material.dart';
import 'package:weather_preview_app/presentation/widgets/bottom_sheets/app_bottom_sheet.dart';
import '../../theme/colors.dart';
import '../../theme/texts.dart';

class ErrorBottomSheet extends StatefulWidget {
  const ErrorBottomSheet({super.key});

  @override
  State<ErrorBottomSheet> createState() => _ErrorBottomSheetState();
}

class _ErrorBottomSheetState extends State<ErrorBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
        title: 'Something went wrong',
        children: [
          const SizedBox(height: 20),
          buildDescription(context),
          const SizedBox(height: 28),
        ],
    );
  }

  Widget buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Please try again later',
        style: TextsTheme.of(context).body2(ColorsTheme.of(context).primaryInvertedText),
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
              'Something went wrong',
              style: TextsTheme.of(context).heading2(ColorsTheme.of(context).primaryInvertedText),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: Navigator.of(context).pop,
            child: Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 5),
              child: Icon(Icons.clear, color: ColorsTheme.of(context).primaryInvertedIcon),
            ),
          ),
        ],
      ),
    );
  }
}
