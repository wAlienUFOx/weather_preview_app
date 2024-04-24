import 'package:flutter/material.dart';
import 'package:weather_preview_app/presentation/widgets/text_fields/search_field.dart';

import '../../theme/colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, this.height = kToolbarHeight});
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsTheme.of(context).secondarySF,
      toolbarHeight: 96,
      title: const SearchField(),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(16))),
    );
  }
}
