import 'package:flutter/material.dart';
import 'package:super_app/constant/color.dart';

class ButtonPrimary extends TextButton {
  ButtonPrimary({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required String text,
  }) : super(
          key: key,
          onPressed: () {
            if (onPressed != null) {
              onPressed();
            }
          },
          onLongPress: onLongPress,
          style: TextButton.styleFrom(
              primary: Colors.white, backgroundColor: colorButtonPrimary),
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        );
}
