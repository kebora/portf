import 'package:flutter/material.dart';
import 'package:portf/colors.dart';

const hpaAppDescription = '''
A school management system for HPA, created in collaboration with the administration.
App made with Flutter, using supabase as my backend, with simple local storage handled by hydrated bloc. App interface mainly composed of a customized version of plutogrid.
\n
App is currently used in production by Hillview Piseta Academy.
''';

class HillviewAppView extends StatelessWidget {
  const HillviewAppView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 800;

    if (isMobile) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/hpadesktop.png",
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: _buildAppCard(context),
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
              "assets/images/hpadesktop.png",
              width: 500,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: _buildAppCard(context),
            ),
          ],
        ),
      );
    }
  }

  Widget _buildAppCard(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 800;

    return Card(
      color: cardBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "HPA DESKTOP",
              style: TextStyle(
                fontSize: isMobile ? 32 : 50,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              hpaAppDescription,
              style: TextStyle(fontFamily: "Montserrat"),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}