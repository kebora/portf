import 'package:flutter/material.dart';
import 'package:portf/colors.dart';

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
              color: moduleTitle,
              fontFamily: "Montserrat",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stepper(steps: const [
              Step(
                title: Text(
                  "Webuye DEB Secondary School (Volunteer)",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Text(
                  "One of the best moments of my life definitely. I enjoyed teaching so much that I voluntarily extended my attachment period by 2 months.",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Step(
                title: Text(
                  "Herufi Inc.",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Text(
                  "This place literally made me have a closer look in flutter. I was introduced to bloc even before flutter itself. Crazy right?",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Step(
                title: Text(
                  "Turning Point Trust (Volunteer).",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    // color: Colors.amberAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Text(
                  "This place literally made me have a closer look in flutter. I was introduced to bloc even before flutter itself. Crazy right?",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
