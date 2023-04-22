import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/projects_description.dart';

class FTubeAppView extends StatelessWidget {
  const FTubeAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/mav_ft.png",
            width: 300,
          ),
          Card(
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      "FLUTTERTUBE",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      flutterTubeAppDescription,
                      style: TextStyle(fontFamily: "Montserrat"),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Project not receiving support!"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.github),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.googlePlay),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
