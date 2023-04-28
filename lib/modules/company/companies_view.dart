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
          ModuleTitleTemplate(title: "Reviews"),
          _CompanyLabel(
            companyName:
                "TL Technologies Company PVT LTD (Front end/Flutter developer, India)",
            companyDescription:
                "I mainly worked as a front-end web developer. A great place to work definitely. Shoutout to Sangi (Founder). She is an amazing mentor.",
          ),
          _CompanyLabel(
            companyName: "TP Trust (Volunteer, Nairobi)",
            companyDescription:
                "I had a lot of fun teaching kids how to code in Javascript using Scratch. My stay was brief as I got a contract with TL after just a few weeks in, but memory isn't.",
          ),
          _CompanyLabel(
            companyName: "Herufi Inc (Software developer intern, Nairobi)",
            companyDescription:
                "In the first meeting, I was asked whether I had ever heard of Felix Angelov/bloc. It was not funny at the time, but in retrospect, I laugh so hard. A very great place to work.\nThis is the place that really made me love flutter.",
          ),
          _CompanyLabel(
            companyName: "Webuye DEB Secondary School (Volunteer, Bungoma)",
            companyDescription:
                "I helped most students find back the love for Mathematics and Computers here. The passion there was so incredible, that I extended my stay past my official agreement by 1 month, after students asked me to consider that option.",
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
