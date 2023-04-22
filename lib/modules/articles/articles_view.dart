import 'package:flutter/material.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Articles",
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
