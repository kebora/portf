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
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    final double buttonSpacing = isMobile ? 8.0 : 20.0;
    final double buttonPadding = isMobile ? 8.0 : 12.0;

    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ModuleTitleTemplate(title: "Contact"),
              const SizedBox(height: 16),
              const Card(
                margin: EdgeInsets.all(8),
                color: cardBackgroundColor,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("KENYAN"),
                ),
              ),
              const SizedBox(height: 24),
              
              // First row of buttons
              _buildButtonRow(
                isMobile: isMobile,
                spacing: buttonSpacing,
                buttons: [
                  const _ContactButton(
                    label: "Github",
                    iconData: FontAwesomeIcons.github,
                    link: "https://github.com/kebora",
                  ),
                  const _ContactButton(
                    label: "Medium",
                    iconData: FontAwesomeIcons.medium,
                    link: "https://medium.com/@danilosimiyu",
                  ),
                ],
              ),
              SizedBox(height: isMobile ? 12 : 20),
              
              // Second row of buttons
              _buildButtonRow(
                isMobile: isMobile,
                spacing: buttonSpacing,
                buttons: [
                  const _ContactButton(
                    label: "Playstore",
                    iconData: FontAwesomeIcons.googlePlay,
                    link: "https://play.google.com/store/apps/dev?id=6015300182985046723",
                  ),
                  const _ContactButton(
                    label: "YouTube",
                    iconData: FontAwesomeIcons.youtube,
                    link: "https://www.youtube.com/@danilosimiyu",
                  ),
                ],
              ),
              SizedBox(height: isMobile ? 12 : 20),
              
              // Third row of buttons
              _buildButtonRow(
                isMobile: isMobile,
                spacing: buttonSpacing,
                buttons: [
                  const _ContactButton(
                    label: "Rive",
                    iconData: FontAwesomeIcons.drawPolygon,
                    link: "https://rive.app/@danilosimiyu/",
                  ),
                  const _ContactButton(
                    label: "LinkedIn",
                    iconData: FontAwesomeIcons.linkedin,
                    link: "https://www.linkedin.com/in/daniel-simiyu-905689245/",
                  ),
                ],
              ),
              SizedBox(height: isMobile ? 12 : 20),
              
              // Email button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: isMobile ? 0 : 100),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(buttonPadding),
                  ),
                  onPressed: () async {
                    const mailUrl = 'mailto:danielmsimiyu71@gmail.com';
                    try {
                      await launch(mailUrl);
                    } catch (e) {
                      await Clipboard.setData(const ClipboardData(text: mailUrl));
                    }
                  },
                  icon: const Icon(Icons.email),
                  label: const Text("Email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonRow({
    required bool isMobile,
    required double spacing,
    required List<Widget> buttons,
  }) {
    if (isMobile) {
      return Column(
        children: buttons
            .map((button) => Padding(
                  padding: EdgeInsets.only(bottom: spacing),
                  child: button,
                ))
            .toList(),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: buttons
          .map((button) => Padding(
                padding: EdgeInsets.symmetric(horizontal: spacing / 2),
                child: button,
              ))
          .toList(),
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
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 16 : 20,
          vertical: isMobile ? 8 : 12,
        ),
      ),
      onPressed: () {
        js.context.callMethod('open', [link]);
      },
      icon: Icon(iconData, size: isMobile ? 16 : 20),
      label: Text(
        label,
        style: TextStyle(fontSize: isMobile ? 14 : 16),
      ),
    );
  }
}