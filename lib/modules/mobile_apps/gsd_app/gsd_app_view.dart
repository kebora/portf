import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';

const gsdAppDescription = '''
 First interaction with flutter, thought it would be fun making a custom diary app.
''';

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
                        "GREEN SUN DIARY",
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
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.github),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.googlePlay),
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
