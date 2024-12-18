// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portf/colors.dart';
import 'package:portf/widgets/module_title_template.dart';

class CompaniesView extends StatelessWidget {
  const CompaniesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ModuleTitleTemplate(title: "Workplaces"),
          _CompanyLabelWithButton(
            companyName: "RoyalTech Computers LTD (IT Intern, Nairobi)",
            companyDescription:
                "Henry Adeeya and Kennedy Kigen are awesome, they taught me a lot of things. Oh, they also gave me an opportunity of testing and improving their laravel website!",
            companyBtnLink: "https://royaltech.co.ke/",
          ),
          _CompanyLabelWithButton(
            companyName:
                "TL Technologies Company PVT LTD (Front end/Flutter developer, India)",
            companyDescription:
                "Mainly worked as a front-end web developer. A great place. Shoutout to Sangi (Founder). She is an amazing mentor.",
            companyBtnLink: "https://ams.tsobriargrove.org/",
          ),
          _CompanyLabel(
            companyName: "TP Trust (Volunteer, Nairobi)",
            companyDescription:
                "Had a lot of fun teaching kids how to code in Javascript using Scratch. My stay was brief as I got a contract with TL after just a few weeks in, but memory isn't.",
          ),
          _CompanyLabelWithButton(
            companyName:
                "iPoint Technologies (Software developer intern, Nairobi)",
            companyDescription:
                "A very great place to work. This is the place that really made me love flutter.",
            companyBtnLink:
                "https://play.google.com/store/apps/details?id=com.ipoint.mizpah",
          ),
          _CompanyLabel(
            companyName: "Webuye DEB Secondary School (Volunteer, Bungoma)",
            companyDescription:
                "I helped most students find back the love for Mathematics and Computers here. The passion there was so incredible, that I extended my stay by 1 month.",
          ),
          SizedBox(
            height: 20,
          )
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
