import 'package:flutter/material.dart';
import 'package:portf/modules/mobile_apps/ftube_app/ftube_app_view.dart';
import 'package:portf/modules/mobile_apps/gsd_app/gsd_app_view.dart';
import 'package:portf/modules/mobile_apps/jogging_app/jogging_app_view.dart';

class MobileAppsView extends StatelessWidget {
  const MobileAppsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Mobile Apps",
            style: TextStyle(
              fontSize: 90,
              color: Colors.black26,
              fontFamily: "Montserrat",
            ),
          ),
          JoggingAppView(),
          GSDAppView(),
          FTubeAppView(),
        ],
      ),
    );
  }
}
