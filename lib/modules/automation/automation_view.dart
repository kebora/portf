import 'package:flutter/material.dart';
import 'package:portf/colors.dart';
import 'package:portf/widgets/module_title_template.dart';
import 'dart:js' as js;

class AutomationView extends StatelessWidget {
  const AutomationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ModuleTitleTemplate(title: "Automation"),
          _ProjectLabel(
            projectName: "Ansible",
            projectDescription:
                "This is a playbook to automate deployment of a Django Web application to a VM from a local machine.",
            projectLink: "https://github.com/danielmsd1/Ansible_onlyevents",
          ),
        ],
      ),
    );
  }
}

class _ProjectLabel extends StatelessWidget {
  const _ProjectLabel({
    // ignore: unused_element
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
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Card(
          color: cardBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  projectName,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.amber.shade100,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  projectDescription,
                  style: const TextStyle(fontFamily: "Montserrat"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    js.context.callMethod('open', [projectLink]);
                  },
                  child: const Text("Code"),
                ),
              ],
            ),
          )),
    );
  }
}
