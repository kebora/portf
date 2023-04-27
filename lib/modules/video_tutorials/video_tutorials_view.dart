import 'package:flutter/material.dart';
import 'package:portf/widgets/module_title_template.dart';

import 'package:flutter/foundation.dart';
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
                "Comprehensive guide for Blocs and Cubits",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                ),
              ),
              onPressed: () {
                playHostedVideo("eeYrLYvaWcw");
              },
            ),
          )
        ],
      ),
    );
  }
}
