import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

const gsdAppDescription = '''
A simple diary app on the surface, but it has a lot of cool animations, and implementation that follows the best practices by the VGV (Very Good Ventures) Team. \n
App made with Flutter, using firebase as backend, and bloc for state management. Assets drawn using Inkscape.
''';

const String _githubLink = "https://github.com/kebora/greensundiary";
const String _downloadLink = 'https://github.com/kebora/greensundiary/releases/tag/v1.0.7';

class GSDAppView extends StatelessWidget {
  const GSDAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Card(
                color: cardBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "Green Sun Diary",
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
                        gsdAppDescription,
                        style: TextStyle(fontFamily: "Montserrat"),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child:
                                const Text("Project is not receiving support!"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            tooltip: 'Source code',
                            onPressed: () {
                              js.context.callMethod('open', [_githubLink]);
                            },
                            icon: const Icon(FontAwesomeIcons.github),
                          ),
                          IconButton(
                            tooltip: 'Download Release',
                            onPressed: () {
                              js.context.callMethod('open', [_downloadLink]);
                            },
                            icon: const Icon(FontAwesomeIcons.download),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          Image.asset(
            "assets/images/mav_gsd.png",
            width: 300,
          ),
        ],
      ),
    );
  }
}
