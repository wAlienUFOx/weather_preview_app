import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavHandler extends StatelessWidget {
  const NavHandler({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.08),
        child: navigationShell,
      ),
    );
  }
}
