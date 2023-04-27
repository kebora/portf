import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portf/colors.dart';

const _appDescription = '''
This is mostly the place I go to get a hint of what is happening around the World.\n
This app implements the Rewarded ads and the News API. Check out the code.
''';

///
const String _apkDownloadLink =
    "https://mega.nz/file/u6Y2BQjY#MhuA86DIU9trIGLkgtB54yEl9Uqothuf8t7eggVQD7w";

///
class NewsAppView extends StatelessWidget {
  const NewsAppView({super.key});

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
                      "News App",
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
                      _appDescription,
                      style: TextStyle(fontFamily: "Montserrat"),
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
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.download),
                          label: const Text("Download APK"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Image.asset(
            "assets/images/mav_news.png",
            width: 300,
          ),
        ],
      ),
    );
  }
}
