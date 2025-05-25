// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../colors.dart';

const isharaAppDescription = '''
Most people use mobile phones to shoot videos, but their level of control is limited when done over a distance, say while the device is appended on a tripod.
App allows the user to control video recording functionalities using custom hand gestures.\n
App made with Java. A machine learning model by Mediapipe for gesture recognition was finetuned by custom data from HaGRID to result in 7 functional gesture classes.
Check out a more detailed description in Github and try out the app.
''';

const String _githubLink = "https://github.com/kebora/Ishara";
const String _playstoreLink =
    "https://play.google.com/apps/internaltest/4701559001780237625";

class IsharaAppView extends StatelessWidget {
  const IsharaAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/ishara_portrait.png",
            width: 300,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Card(
                color: cardBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Ishara",
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
                        isharaAppDescription,
                        style: TextStyle(fontFamily: "Montserrat"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            tooltip: 'Source code',
                            onPressed: () {
                              js.context.callMethod('open', [_githubLink]);
                            },
                            icon: const Icon(FontAwesomeIcons.github),
                          ),
                          IconButton(
                            tooltip: 'Test on Playstore',
                            onPressed: () {
                              js.context.callMethod('open', [_playstoreLink]);
                            },
                            icon: const Icon(FontAwesomeIcons.googlePlay),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
