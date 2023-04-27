import 'package:flutter/material.dart';
import 'package:portf/colors.dart';
import 'package:portf/modules/web_apps/dent_app/dent_app_view.dart';
import 'package:portf/modules/web_apps/portfolio_app/portfolio_app_view.dart';
import 'package:portf/widgets/horizontal_text_divider.dart';
import 'package:portf/widgets/module_title_template.dart';

class WebAppsView extends StatelessWidget {
  const WebAppsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ModuleTitleTemplate(title: "Web Apps"),
          DentAppView(),
          HorizontalTextDivider(message: "Henry Mwale Mphatso"),
          PortfolioAppView(),
          HorizontalTextDivider(message: "OSS"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
