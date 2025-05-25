import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

const dentAppDescription = '''
Henry asked me to create a web app for Dent design studio.\n
This app is made on Django and uses Postgres DB.
''';
const _githubLink = "https://github.com/kebora/dent-project";

class DentAppView extends StatelessWidget {
  const DentAppView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 800;

    if (isMobile) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/wav_dentcreatives.png",
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: _buildAppCard(isMobile),
          ),
        ],
      );
    } else {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/wav_dentcreatives.png",
              width: 500,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: _buildAppCard(isMobile),
            ),
          ],
        ),
      );
    }
  }

  Widget _buildAppCard(bool isMobile) {
    return Card(
      color: cardBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "DENT CREATIVES",
              style: TextStyle(
                fontSize: isMobile ? 32 : 50,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              dentAppDescription,
              style: TextStyle(fontFamily: "Montserrat"),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    js.context.callMethod('open', [_githubLink]);
                  },
                  icon: const Icon(FontAwesomeIcons.github),
                  iconSize: 28,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}