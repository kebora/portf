// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';
import 'package:portf/widgets/module_title_template.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ModuleTitleTemplate(title: "Contact"),
          const Card(
            margin: EdgeInsets.all(8),
            color: cardBackgroundColor,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "KENYAN",
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _ContactButton(
                  label: "Github",
                  iconData: FontAwesomeIcons.github,
                  link: "https://github.com/kebora"),
              SizedBox(
                width: 20,
              ),
              _ContactButton(
                  label: "Medium",
                  iconData: FontAwesomeIcons.medium,
                  link: "https://medium.com/@danilosimiyu"),
              SizedBox(
                width: 20,
              ),
              _ContactButton(
                  label: "Playstore",
                  iconData: FontAwesomeIcons.googlePlay,
                  link:
                      "https://play.google.com/store/apps/dev?id=6015300182985046723"),
              SizedBox(
                width: 20,
              ),
              _ContactButton(
                  label: "YouTube",
                  iconData: FontAwesomeIcons.youtube,
                  link: "https://www.youtube.com/@danilosimiyu"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const _ContactButton(
                  label: "Rive",
                  iconData: FontAwesomeIcons.drawPolygon,
                  link: "https://rive.app/@danilosimiyu/"),
              const SizedBox(
                width: 20,
              ),
              const _ContactButton(
                  label: "LinkedIn",
                  iconData: FontAwesomeIcons.linkedin,
                  link: "https://www.linkedin.com/in/daniel-simiyu-905689245/"),
              const SizedBox(
                width: 20,
              ),
              // const _ContactButton(
              //     label: "Twitter",
              //     iconData: FontAwesomeIcons.twitter,
              //     link: "https://twitter.com/danilosimiyu"),
              // const SizedBox(
              //   width: 20,
              // ),
              ElevatedButton.icon(
                onPressed: () async {
                  const mailUrl = 'mailto:danielmsimiyu71@gmail.com';
                  try {
                    // ignore: deprecated_member_use
                    await launch(mailUrl);
                  } catch (e) {
                    await Clipboard.setData(const ClipboardData(text: mailUrl));
                  }
                },
                icon: const Icon(Icons.email),
                label: const Text("Email"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ContactButton extends StatelessWidget {
  const _ContactButton({
    super.key,
    required this.label,
    required this.iconData,
    required this.link,
  });

  final String label;
  final IconData iconData;
  final String link;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        js.context.callMethod('open', [link]);
      },
      icon: Icon(iconData),
      label: Text(label),
    );
  }
}
