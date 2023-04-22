import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/projects_description.dart';

class DentAppView extends StatelessWidget {
  const DentAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/wav_dentcreatives.png",
            width: 400,
          ),
          Card(
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      "DENT CREATIVES",
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
                      dentAppDescription,
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
