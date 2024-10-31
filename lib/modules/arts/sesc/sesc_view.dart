import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portf/colors.dart';
import 'package:portf/widgets/paint_clock_module.dart';

const String sescDescription = '''
I also draw. \n
2d art is my soft spot. I also like 3D and have tried out some models using Blender. If you need custom made art for anything, be it logo, illustration or even yourself. I can deliver!

I mostly use these tools: Blender 3D, Inkscape, Davinci Resolve and some websites like Pixlr for finer touch.\n
''';

class SescView extends StatelessWidget {
  const SescView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/sesc.png",
            width: 300,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Card(
                color: cardBackgroundColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text(
                        "2D Art & Animations",
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
                        sescDescription,
                        style: TextStyle(fontFamily: "Montserrat"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.bottomSheet(
                            const Card(
                              margin: EdgeInsets.all(8),
                              color: cardBackgroundColor,
                              child: Row(
                                children: [
                                  Text(
                                    "As seen..",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 300,
                                    width: 300,
                                    child: PaintClockModule(),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: const Text("Can I make art with code?"),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
