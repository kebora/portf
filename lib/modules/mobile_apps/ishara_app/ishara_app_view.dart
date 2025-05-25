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
    final bool isSmallScreen = MediaQuery.of(context).size.width < 800;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (isSmallScreen) {
          return _buildMobileLayout(context);
        } else {
          return _buildDesktopLayout(context);
        }
      },
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
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
            child: _buildAppCard(),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/ishara_portrait.png",
          width: 250,
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: _buildAppCard(),
        ),
      ],
    );
  }

  Widget _buildAppCard() {
    return Card(
      color: cardBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Ishara",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              isharaAppDescription,
              style: TextStyle(fontFamily: "Montserrat"),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
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
                const SizedBox(width: 20,),
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
      ),
    );
  }
}