import 'package:flutter/material.dart';
import 'package:portf/colors.dart';
import 'package:portf/widgets/module_title_template.dart';

class AutomationView extends StatelessWidget {
  const AutomationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ModuleTitleTemplate(title: "Automation"),
        ],
      ),
    );
  }
}
