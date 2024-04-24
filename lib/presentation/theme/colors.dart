import 'package:flutter/material.dart';

class ColorsTheme {
  const ColorsTheme();

  static ColorsTheme of(BuildContext context) {
    return const ColorsTheme();
  }

  Color get primaryBG => const Color(0xFFFFFFFF);
  Color get secondaryBG => const Color(0xFFF2F2F2);
  Color get overlayBG => const Color(0xFFFFFFFF).withOpacity(0.8);

  Color get primaryText => const Color(0xFF161616);
  Color get secondaryText => const Color(0x993C3C43);
  Color get tertiaryText => const Color(0x663C3C43);
  Color get disabledText => const Color(0x383C3C43);
  Color get linkText => const Color(0xFF0072EF);
  Color get positiveText => const Color(0xFF2FC26E);
  Color get negativeText => const Color(0xFFF15045);
  Color get accentText => const Color(0xFFFD5003);
  Color get primaryInvertedText => const Color(0xFFFFFFFF);

  Color get primarySF => const Color(0xFFFD5003);
  Color get primaryPressedSF => const Color(0xFFFF6521);
  Color get primaryInactiveSF => const Color(0xFFFFEEE6);
  Color get secondarySF => const Color(0xFF333333);
  Color get secondaryPressedSF => const Color(0xFF656565);
  Color get secondaryInactiveSF => const Color(0xFFF6F5F4);
  Color get tetriarySF => const Color(0xFFF2F2F2);
  Color get quaternarySF => const Color(0xFFFFFFFF);
  Color get negativeSF => const Color(0xFFF15045);
  Color get positiveSF => const Color(0xFFDCFFE4);

  Color get primaryBorder => const Color(0xFFFFFFFF);
  Color get secondaryBorder => const Color(0xFFA2A2A2);
  Color get tetriaryBorder => const Color(0xFFF2F2F2);
  Color get accentBorder => const Color(0xFFFD5003);
  Color get positiveBorder => const Color(0xFF2FC26E);
  Color get negativeBorder => const Color(0xFFF15045);

  Color get negativeSeparator => const Color(0xFFF2F2F2);

  Color get accentIcon => const Color(0xFFFD5003);
  Color get primaryInvertedIcon => const Color(0xFFFFFFFF);
  Color get primaryIcon => const Color(0xFF161616);
  Color get secondaryIcon => const Color(0x663C3C43);
  Color get tetriaryIcon => const Color(0xFFEDEDED);
  Color get blueIcon => const Color(0xFF017AFF);
  Color get greenIcon => const Color(0xFF34C759);
  Color get redIcon => const Color(0xFFF15045);
  Color get negativeIcon => const Color(0xFFF15045);
}
