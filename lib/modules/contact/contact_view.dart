import 'package:flutter/material.dart';
import 'package:portf/colors.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contact",
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
