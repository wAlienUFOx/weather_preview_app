import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/colors.dart';
import '../../theme/texts.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key, required this.controller, required this.inCorrectInput});

  final TextEditingController controller;
  final bool inCorrectInput;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: 1,
      onTapOutside: (_) => FocusScope.of(context).unfocus(),
      style: TextStyle(color: ColorsTheme.of(context).primaryText),
      keyboardType: TextInputType.number,
      inputFormatters: [PhoneInputFormatter()],
      decoration: InputDecoration(
        fillColor: ColorsTheme.of(context).tetriarySF,
        filled: true,
        contentPadding: const EdgeInsets.all(12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: (inCorrectInput ? BorderSide(color: ColorsTheme.of(context).negativeBorder) : BorderSide.none),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: '+7 (999) 999 99 99',
        hintStyle: TextsTheme.of(context).body2(ColorsTheme.of(context).secondaryText),
      ),
    );
  }
}

class PhoneInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 18 && newValue.text.startsWith('+')) return oldValue;
    if (newValue.text.length > 17 && newValue.text.startsWith('8')) return oldValue;
    final digitsOnly = newValue.text.replaceAll(RegExp(r'\D+'), '');
    final digitsOnlyChars = digitsOnly.split('');
    final specialSymbolCount = newValue.selection.textBefore(newValue.text).replaceAll(RegExp(r'\d'), '').length;
    final cursorPosition = newValue.selection.start - specialSymbolCount;
    var finalCursorPosition = cursorPosition;

    if (oldValue.text.length - newValue.text.length == 1) {
      if (oldValue.selection.textBefore(oldValue.text).endsWith(' (') ||
          oldValue.selection.textBefore(oldValue.text).endsWith(') ')) {
        digitsOnlyChars.removeAt(cursorPosition - 1);
        finalCursorPosition -= 3;
      } else if (oldValue.selection.textBefore(oldValue.text).endsWith(' ') && cursorPosition == 1) {
        digitsOnlyChars.removeAt(cursorPosition - 1);
        finalCursorPosition -= 3;
      } else if (oldValue.selection.textBefore(oldValue.text).endsWith(' ')) {
        digitsOnlyChars.removeAt(cursorPosition - 1);
        finalCursorPosition -= 2;
      } else if (oldValue.selection.textBefore(oldValue.text).endsWith('(') ||
          oldValue.selection.textBefore(oldValue.text).endsWith(')')) {
        digitsOnlyChars.removeAt(cursorPosition - 1);
        finalCursorPosition -= 3;
      }
    }

    var newString = <String>[];
    for (var i = 0; i < digitsOnlyChars.length; i++) {
      if (i == 0 && digitsOnlyChars.first == '7') {
        newString.add('+');
        newString.add(digitsOnlyChars[i]);
        if (i <= cursorPosition) finalCursorPosition += 1;
      } else if (i == 1) {
        newString.add(' ');
        newString.add('(');
        newString.add(digitsOnlyChars[i]);
        if (i <= cursorPosition) finalCursorPosition += 2;
      } else if (i == 4) {
        newString.add(')');
        newString.add(' ');
        newString.add(digitsOnlyChars[i]);
        if (i <= cursorPosition) finalCursorPosition += 2;
      } else if (i == 7 || i == 9) {
        newString.add(' ');
        newString.add(digitsOnlyChars[i]);
        if (i <= cursorPosition) finalCursorPosition += 1;
      } else {
        newString.add(digitsOnlyChars[i]);
      }
    }
    return TextEditingValue(text: newString.join(), selection: TextSelection.collapsed(offset: finalCursorPosition));
  }
}
