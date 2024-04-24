import 'package:flutter/material.dart';

class GrabberWidget extends StatelessWidget {
  const GrabberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 5,
        width: 36,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0x4D3C3C43)),
      ),
    );
  }
}
