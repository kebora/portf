import 'package:flutter/material.dart';
import 'package:portf/modules/web_apps/dent_app/dent_app_view.dart';
import 'package:portf/modules/web_apps/portfolio_app/portfolio_app_view.dart';
import 'package:text_divider/text_divider.dart';

class WebAppsView extends StatelessWidget {
  const WebAppsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Web Apps",
            style: TextStyle(
              fontSize: 90,
              color: Colors.black26,
              fontFamily: "Montserrat",
            ),
          ),
          const DentAppView(),
          TextDivider.horizontal(
            text: const Text('Client: Henry Mwale Mphatso'),
          ),
          const PortfolioAppView(),
          TextDivider.horizontal(
            text: const Text('OSS Project'),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
