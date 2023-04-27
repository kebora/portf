import 'package:flutter/material.dart';
import 'package:portf/colors.dart';
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
          _AView(title: "Upload keystore file"),
          _AView(title: "Ubuntu server config"),
          _AView(title: "Make a top SnackBar for Java android"),
          _AView(title: "Get started with CameraX (Java Android) — Part 1"),
          _AView(title: "Duplicate Kotlin classes error in android"),
          _AView(title: "ASP.NET fix AutoPostBack double click problem."),
          _AView(title: "Autocomplete for chrome extension development."),
          _AView(title: "Understand APIs in Express JS [part 1: Usage]"),
          _AView(title: "Green Certification approach in Kenya"),
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
    // required this.link,
  });
  final String title;
  // final String link;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {},
          child: Text(title),
        ),
      ],
    );
  }
}
