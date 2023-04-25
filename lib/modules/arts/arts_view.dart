import 'package:flutter/material.dart';
import 'package:portf/colors.dart';

class ArtsView extends StatelessWidget {
  const ArtsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Arts",
            style: TextStyle(
              fontSize: 90,
              color: moduleTitle,
              fontFamily: "Montserrat",
            ),
          ),
        ],
      ),
    );
  }
}
