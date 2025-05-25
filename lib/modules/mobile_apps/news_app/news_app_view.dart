import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

const _appDescription = '''
This is mostly the place I go to get a hint of what is happening around the World.\n
This app implements the Rewarded ads and the News API. Check out the code.
''';

const String _apkDownloadLink =
    "https://mega.nz/file/u6Y2BQjY#MhuA86DIU9trIGLkgtB54yEl9Uqothuf8t7eggVQD7w";

const String _githubLink = "https://github.com/kebora/news";

class NewsAppView extends StatelessWidget {
  const NewsAppView({super.key});

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
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: _buildAppCard(),
          ),
          Image.asset(
            "assets/images/mav_news.png",
            width: 300,
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/mav_news.png",
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
              "News App",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              _appDescription,
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
                  iconSize: 28,
                ),
                const SizedBox(width: 20),
                IconButton(
                  tooltip: 'Download APK',
                  onPressed: () {
                    js.context.callMethod('open', [_apkDownloadLink]);
                  },
                  icon: const FaIcon(FontAwesomeIcons.download),
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