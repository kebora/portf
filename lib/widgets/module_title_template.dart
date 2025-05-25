import 'package:flutter/material.dart';
import 'package:portf/colors.dart';

class ModuleTitleTemplate extends StatelessWidget {
  const ModuleTitleTemplate({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: isMobile ? 35.0 : 90.0,
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
