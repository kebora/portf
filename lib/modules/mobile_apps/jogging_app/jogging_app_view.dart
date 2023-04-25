import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/projects_description.dart';

class JoggingAppView extends StatelessWidget {
  const JoggingAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/api1.png",
            width: 300,
          ),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  "JOGGING APP",
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
                  joggingAppDescription,
                  style: TextStyle(fontFamily: "Montserrat"),
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
