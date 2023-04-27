import 'package:flutter/material.dart';
import 'package:portf/modules/arts/sesc/sesc_view.dart';
import 'package:portf/widgets/module_title_template.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArtsView extends StatelessWidget {
  const ArtsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ModuleTitleTemplate(title: "Arts"),
          SizedBox(
            child: SvgPicture.asset(
              "assets/images/portrait.svg",
            ),
          ),
          const SescView(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
