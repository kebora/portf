import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/projects_description.dart';

class PortfolioAppView extends StatelessWidget {
  const PortfolioAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Text(
                      "OPEN PORTFOLIO",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      openPortfolio,
                      style: TextStyle(fontFamily: "Montserrat"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.github),
                        ),
                        const Text("(MailChimp API used)"),
                      ],
                    ),
                  ],
                ),
              )),
          Image.asset(
            "assets/images/wav_portfolio.png",
            width: 400,
          ),
        ],
      ),
    );
  }
}
