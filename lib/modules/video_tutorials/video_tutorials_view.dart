import 'package:flutter/material.dart';

class VideoTutorialsView extends StatelessWidget {
  const VideoTutorialsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Video Tutorials",
            style: TextStyle(
              fontSize: 90,
              color: Colors.black26,
              fontFamily: "Montserrat",
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
