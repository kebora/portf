import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

const flutterTubeAppDescription = '''
This app uses the YouTube API to pick flutter content from 3 different channels I like.
''';

const String _githubLink = "https://github.com/kebora/fluttertube";
const String _playstoreLink =
    "https://play.google.com/store/apps/details?id=com.simiyu.fluttertube";

class FTubeAppView extends StatelessWidget {
  const FTubeAppView({super.key});

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
            "assets/images/mav_ft.png",
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
          "assets/images/mav_ft.png",
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
              "FlutterTube",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              flutterTubeAppDescription,
              style: TextStyle(fontFamily: "Montserrat"),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[800],
                foregroundColor: Colors.white,
              ),
              child: const Text("Project is not receiving support!"),
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
                  iconSize: 28,
                ),
                const SizedBox(width: 20),
                const Tooltip(
                  message: 'App removed from Play Store',
                  child: Icon(Icons.verified, color: Colors.amber),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}