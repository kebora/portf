import 'package:flutter/material.dart';
import 'package:portf/colors.dart';
import 'package:portf/widgets/module_title_template.dart';
import 'dart:js' as js;

class AutomationView extends StatelessWidget {
  const AutomationView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(isMobile ? 16.0 : 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ModuleTitleTemplate(title: "Automation"),
              const SizedBox(height: 24),
              _ProjectLabel(
                projectName: "Ansible",
                projectDescription:
                    "This is a playbook to automate deployment of a Django Web application to a VM from a local machine.",
                projectLink: "https://github.com/danielmsd1/Ansible_onlyevents",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectLabel extends StatelessWidget {
  const _ProjectLabel({
    super.key,
    required this.projectName,
    required this.projectDescription,
    required this.projectLink,
  });

  final String projectName;
  final String projectDescription;
  final String projectLink;

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return SizedBox(
      width: isMobile ? MediaQuery.of(context).size.width * 0.9 : MediaQuery.of(context).size.width / 2,
      child: Card(
        color: cardBackgroundColor,
        child: Padding(
          padding: EdgeInsets.all(isMobile ? 12.0 : 16.0),
          child: Column(
            children: [
              Text(
                projectName,
                style: TextStyle(
                  fontSize: isMobile ? 18 : 24,
                  color: Colors.amber.shade100,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isMobile ? 8 : 12),
              Text(
                projectDescription,
                style: const TextStyle(fontFamily: "Montserrat"),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: isMobile ? 8 : 12),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 16 : 24,
                    vertical: isMobile ? 8 : 12,
                  ),
                ),
                onPressed: () {
                  js.context.callMethod('open', [projectLink]);
                },
                child: Text(
                  "Code",
                  style: TextStyle(fontSize: isMobile ? 14 : 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}