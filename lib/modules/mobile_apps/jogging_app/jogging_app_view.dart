import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

const joggingAppDescription = '''
I wanted to make a decision on whether to jog & the outfit to put on an hour earlier.\n
This app consumes the weatherbit API for the data.
''';

const String _githubLink = "https://github.com/kebora/jog";
const String _playstoreLink =
    "https://play.google.com/store/apps/details?id=com.kebora.boraweather";

class JoggingAppView extends StatelessWidget {
  const JoggingAppView({super.key});

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
            "assets/images/api1.png",
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
          "assets/images/api1.png",
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
              "Jogging App",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              joggingAppDescription,
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
                const SizedBox(width: 20),
                const Tooltip(
                  message: 'Archived',
                  child: Icon(Icons.archive, color: Colors.amber),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}