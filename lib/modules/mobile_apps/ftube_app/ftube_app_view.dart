import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

const flutterTubeAppDescription = '''
This app uses the YouTube API to pick flutter content from 3 different channels I like.
''';
const String _githubLink = "https://github.com/kebora/fluttertube";
const String _playstoreLink =
    "https://play.google.com/store/apps/details?id=com.simiyu.fluttertube";

class FTubeAppView extends StatelessWidget {
  const FTubeAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/mav_ft.png",
            width: 300,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Card(
                color: cardBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "FlutterTube",
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
                        flutterTubeAppDescription,
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
                          const Icon(Icons.verified,color: Colors.amber,)
                          // IconButton(
                          //   onPressed: () {
                          //     js.context.callMethod('open', [_playstoreLink]);
                          //   },
                          //   icon: const Icon(FontAwesomeIcons.googlePlay),
                          // ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
