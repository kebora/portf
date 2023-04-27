import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';

class HorizontalTextDivider extends StatelessWidget {
  const HorizontalTextDivider({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return TextDivider.horizontal(
      text: Text(
        message,
        style: const TextStyle(
          fontFamily: "PermanentMarker",
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
