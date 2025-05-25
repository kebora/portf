// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portf/colors.dart';
import 'package:portf/modules/desktop_apps/hillview/hillview_app_view.dart';
import 'package:portf/widgets/module_title_template.dart';

class CompaniesView extends StatelessWidget {
  const CompaniesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ModuleTitleTemplate(title: "Desktop Apps"),
          HillviewAppView(),
        ],
      ),
    );
  }
}

class _CompanyLabel extends StatelessWidget {
  const _CompanyLabel({
    // ignore: unused_element
    super.key,
    required this.companyName,
    required this.companyDescription,
  });

  final String companyName;
  final String companyDescription;
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
                  companyName,
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
                  companyDescription,
                  style: const TextStyle(fontFamily: "Montserrat"),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
    );
  }
}

//
class _CompanyLabelWithButton extends StatelessWidget {
  const _CompanyLabelWithButton({
    // ignore: unused_element
    super.key,
    required this.companyName,
    required this.companyDescription,
    required this.companyBtnLink,
  });

  final String companyName;
  final String companyDescription;
  final String companyBtnLink;

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
                  companyName,
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
                  companyDescription,
                  style: const TextStyle(fontFamily: "Montserrat"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    js.context.callMethod('open', [companyBtnLink]);
                  },
                  child: const Text("Worked on"),
                ),
              ],
            ),
          )),
    );
  }
}
