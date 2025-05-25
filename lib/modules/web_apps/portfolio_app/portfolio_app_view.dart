import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

const openPortfolio = '''
This open portfolio also uses the MailChimp API to collect data from users.
''';
const _githubLink = "https://github.com/danielmsd1/opp/tree/main/portfolio-project";

class PortfolioAppView extends StatelessWidget {
  const PortfolioAppView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 800;

    if (isMobile) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: _buildAppCard(isMobile),
          ),
          const SizedBox(height: 20),
          Image.asset(
            "assets/images/wav_portfolio.png",
            width: MediaQuery.of(context).size.width * 0.9,
          ),
        ],
      );
    } else {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: _buildAppCard(isMobile),
            ),
            Image.asset(
              "assets/images/wav_portfolio.png",
              width: 500,
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
              "OPEN PORTFOLIO",
              style: TextStyle(
                fontSize: isMobile ? 32 : 50,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              openPortfolio,
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