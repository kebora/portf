// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:portf/widgets/module_title_template.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ModuleTitleTemplate(title: "Articles"),
          _AView(
            title: "OpenCV configuration on Android project",
            link:
                "https://medium.com/@danilosimiyu/opencv-configuration-on-android-project-882068a20fcf",
          ),
          _AView(
            title: "When to use Camera2 over OpenCV",
            link:
                "https://medium.com/@danilosimiyu/when-to-use-camera2-over-opencv-904a46e4d456",
          ),
          _AView(
            title: "Upload keystore file",
            link:
                "https://medium.com/@danilosimiyu/upload-keystore-file-488bd68a5e6",
          ),
          _AView(
            title: "Ubuntu server config",
            link:
                "https://medium.com/@danilosimiyu/django-deployment-initial-steps-90041374e271",
          ),
          _AView(
            title: "Make a top SnackBar for Java android",
            link:
                "https://medium.com/@danilosimiyu/make-a-top-snackbar-for-java-android-bd79e5b3418c",
          ),
          _AView(
            title: "Get started with CameraX (Java Android) — Part 1",
            link:
                "https://medium.com/@danilosimiyu/get-started-with-camerax-java-android-part-1-e27de7145dbf",
          ),
          _AView(
            title: "Duplicate Kotlin classes error in android",
            link:
                "https://medium.com/@danilosimiyu/kotlin-duplicate-classes-issue-in-android-6049cd7af00a",
          ),
          _AView(
            title: "ASP.NET fix AutoPostBack double click problem.",
            link:
                "https://medium.com/@danilosimiyu/asp-net-double-click-error-1d97c0be136c",
          ),
          _AView(
            title: "Autocomplete for chrome extension development.",
            link:
                "https://medium.com/@danilosimiyu/autocomplete-for-chrome-extension-development-cba0c1aacc95",
          ),
          _AView(
            title: "Understand APIs in Express JS [part 1: Usage]",
            link:
                "https://medium.com/@danilosimiyu/understand-apis-in-express-js-part-1-usage-8f159eacabe6",
          ),
          // _AView(
          //   title: "Green Certification approach in Kenya",
          //   link:
          //       "https://medium.com/@danilosimiyu/green-certification-approach-in-kenya-507bd5bec90b",
          // ),
        ],
      ),
    );
  }
}

class _AView extends StatelessWidget {
  const _AView({
    // ignore: unused_element
    super.key,
    required this.title,
    required this.link,
  });
  final String title;
  final String link;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {
            js.context.callMethod('open', [link]);
          },
          child: Text(title),
        ),
      ],
    );
  }
}
