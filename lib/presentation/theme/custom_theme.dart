import 'package:flutter/material.dart';
import 'colors.dart';

class CustomTheme extends InheritedWidget {
  final ColorsTheme colorsTheme;

  const CustomTheme({
    super.key,
    required super.child,
  }) : colorsTheme = const ColorsTheme();

  @override
  bool updateShouldNotify(CustomTheme oldWidget) {
    return false;
  }

  static ColorsTheme of(BuildContext context) {
    final CustomTheme? result = context.dependOnInheritedWidgetOfExactType<CustomTheme>();
    assert(result != null, 'No MyThemeInheritedWidget found in context');
    return result!.colorsTheme;
  }
}

class ThemeProvider extends StatefulWidget {
  final Widget child;
  const ThemeProvider({super.key, required this.child});

  @override
  State<ThemeProvider> createState() => ThemeProviderState();

  static ThemeProviderState of(BuildContext context) {
    return context.findAncestorStateOfType<ThemeProviderState>()!;
  }
}

class ThemeProviderState extends State<ThemeProvider> {

  @override
  Widget build(BuildContext context) {
    return CustomTheme(child: widget.child);
  }
}
