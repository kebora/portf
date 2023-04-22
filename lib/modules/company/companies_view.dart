import 'package:flutter/material.dart';

class CompaniesView extends StatelessWidget {
  const CompaniesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Companies",
            style: TextStyle(
              fontSize: 90,
              color: Colors.black26,
              fontFamily: "Montserrat",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Stepper(steps: const [
            Step(
                title: Text("Webuye DEB Secondary School"),
                content: Text(
                  "One of the best moments of my life definitely. I enjoyed teaching so much that I extended my attachement by 2 months.",
                ))
          ])
        ],
      ),
    );
  }
}
