import 'package:flutter/material.dart';

class ColorsTheme {
  const ColorsTheme();

  static ColorsTheme of(BuildContext context) {
    return const ColorsTheme();
  }

  Color get primaryBG => const Color(0xFFFFFFFF);
  Color get secondaryBG => const Color(0xFFF2F2F2);

  Color get primaryText => const Color(0xFF161616);
  Color get secondaryText => const Color(0x993C3C43);
  Color get negativeText => const Color(0xFFF15045);
  Color get accentText => const Color(0xFFFD5003);
  Color get primaryInvertedText => const Color(0xFFFFFFFF);

  Color get primarySF => const Color(0xFFFD5003);
  Color get primaryPressedSF => const Color(0xFFFF6521);
  Color get primaryInactiveSF => const Color(0xFFFFEEE6);
  Color get secondarySF => const Color(0xFF333333);
  Color get secondaryPressedSF => const Color(0xFF656565);
  Color get tetriarySF => const Color(0xFFF2F2F2);

  Color get accentBorder => const Color(0xFFFD5003);
  Color get negativeBorder => const Color(0xFFF15045);

  Color get accentIcon => const Color(0xFFFD5003);
  Color get primaryInvertedIcon => const Color(0xFFFFFFFF);
}
