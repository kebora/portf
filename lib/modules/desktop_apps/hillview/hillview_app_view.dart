import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

const hpaAppDescription = '''
A school management system made for HPA, in collaboration with the management.
App made with Flutter, using supabase as my backend, with simple local storage handled by hydrated bloc. App interface mainly composed of a customized version of plutogrid.
\n
App is currently used in production by Hillview Piseta Academy.
''';

class HillviewAppView extends StatelessWidget {
  const HillviewAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/hpadesktop.png",
            width: 500,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            // ignore: prefer_const_constructors
            child: Card(
                color: cardBackgroundColor,
                child:  const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "HPA DESKTOP",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        hpaAppDescription,
                        style: TextStyle(fontFamily: "Montserrat"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     IconButton(
                      //       onPressed: () {
                      //         js.context.callMethod('open', []);
                      //       },
                      //       icon: const Icon(FontAwesomeIcons.circleInfo),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
