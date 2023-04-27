import 'package:flutter/material.dart';
import 'package:portf/colors.dart';

class ModuleTitleTemplate extends StatelessWidget {
  const ModuleTitleTemplate({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 90,
            color: moduleTitle,
            fontFamily: "Montserrat",
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
