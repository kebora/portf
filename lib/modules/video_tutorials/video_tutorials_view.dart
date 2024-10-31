import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portf/widgets/module_title_template.dart';
import 'package:universal_html/html.dart' as html;

void playHostedVideo(String withId, [bool isVimeo = false]) {
  if (kIsWeb) {
    final v = html.window.document.getElementById('videoPlayer');
    if (v != null) {
      if (isVimeo) {
        v.setAttribute("data-vimeo-id", withId);
      } else {
        v.setAttribute("data-youtube-id", withId);
      }
      final a = html.window.document.getElementById('triggerVideoPlayer');
      if (a != null) {
        a.dispatchEvent(html.MouseEvent('click'));
      }
    }
  } else {
    // we're not on the web platform
    // and should use the video_player package
  }
}

class VideoTutorialsView extends StatelessWidget {
  const VideoTutorialsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ModuleTitleTemplate(title: "Video Tutorials"),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "From Cubits to Blocs",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("x0yXGzSdIxA");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "Time lapse of my practice 12",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("ST8y0yJVeTQ");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "Time lapse of my practice 11",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("EsNKySEXEoE");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // First steps in Laravel
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "First steps in Laravel",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("s0X6xxlIvkE&t=140s");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "Domestic violence prediction",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("NmyTjEeSP4s");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "Explaining cubits in flutter",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("LTXfT3DAfv8");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "A failed sculpt in blender",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("nOrSC3XX_ns");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "Student grade prediction",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("vggF_FQ6hW0");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "Explaining Baking Normals",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("Q3f00ybUQ9M");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "Modeling a lamp in blender",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("I33qo52tuug");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "Going Afro in Blender",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("k7kSsp1ck30");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "A model of an elephant from a single vert",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("JTTTmI73eGE");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            child: ElevatedButton(
              child: const Text(
                "Discussing evolution of law in around 17 mins",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("h3eUrMfd6EM&t=349s");
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
