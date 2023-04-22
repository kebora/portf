import 'package:flutter/material.dart';

class AutomationView extends StatelessWidget {
  const AutomationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Automation",
            style: TextStyle(
              fontSize: 90,
              color: Colors.black26,
              fontFamily: "Montserrat",
            ),
          ),
        ],
      ),
    );
  }
}
