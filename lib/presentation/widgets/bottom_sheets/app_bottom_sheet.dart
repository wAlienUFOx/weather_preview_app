import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../theme/colors.dart';
import '../../theme/texts.dart';
import '../painters/grabber_widget.dart';


class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({super.key, required this.title, required this.children, this.size});

  final String title;
  final List<Widget> children;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    Widget body = Container(
      height: size != null ? double.infinity : null,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        color: ColorsTheme.of(context).secondarySF,
      ),
      margin: size != null ? EdgeInsets.only(top: size!.height * 0.1) : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 7),
          const GrabberWidget(),
          const SizedBox(height: 20),
          buildTitleBloc(context),
          ...children,
        ],
      ),
    );
    if (size == null) return Wrap(children: [body]);
    return body;
  }

  Widget buildTitleBloc(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
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