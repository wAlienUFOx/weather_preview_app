import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../theme/colors.dart';
import '../../theme/texts.dart';
import '../painters/grabber_widget.dart';

class ErrorBottomSheet extends StatefulWidget {
  const ErrorBottomSheet({super.key});

  @override
  State<ErrorBottomSheet> createState() => _ErrorBottomSheetState();
}

class _ErrorBottomSheetState extends State<ErrorBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          color: ColorsTheme.of(context).secondarySF,
        ),
        //margin: EdgeInsets.only(top: widget.size.height * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 7),
            const GrabberWidget(),
            const SizedBox(height: 20),
            buildTitleBloc(context),
            const SizedBox(height: 20),
            buildDescription(context),
            const SizedBox(height: 28),
          ],
        ),
      ),
    ]);
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
}
