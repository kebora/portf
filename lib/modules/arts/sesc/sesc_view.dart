import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portf/colors.dart';
import 'package:portf/widgets/paint_clock_module.dart';

const String sescDescription = '''
I also draw. \n
2d art is my soft spot. I also like 3D and have tried out some work on Blender. If you need custom made art for anything, be it logo, illustration or even yourself. I can deliver!
''';

class SescView extends StatelessWidget {
  const SescView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 800;

    if (isMobile) {
      return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   "assets/images/sesc.png",
            //   width: MediaQuery.of(context).size.width * 0.9,
            // ),
            // const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: _buildContentCard(context),
            ),
          ],
        ),
      );
    } else {
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
              child: _buildContentCard(context),
            ),
          ],
        ),
      );
    }
  }

  Widget _buildContentCard(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 800;

    return Card(
      color: cardBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 16.0 : 20.0),
        child: Column(
          children: [
            Text(
              "2D Art & Animations",
              style: TextStyle(
                fontSize: isMobile ? 32 : 50,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: isMobile ? 12 : 20),
            const Text(
              sescDescription,
              style: TextStyle(fontFamily: "Montserrat"),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: isMobile ? 16 : 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 24 : 32,
                  vertical: isMobile ? 12 : 16,
                ),
              ),
              onPressed: () {
                Get.bottomSheet(
                  Card(
                    margin: EdgeInsets.all(isMobile ? 8 : 16),
                    color: cardBackgroundColor,
                    child: isMobile
                        ? const Column(
                            children: [
                              Text(
                                "As seen..",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontFamily: "Montserrat",
                                ),
                              ),
                              SizedBox(height: 16),
                              const SizedBox(
                                height: 200,
                                width: 200,
                                child: PaintClockModule(),
                              ),
                            ],
                          )
                        : const Row(
                            children: [
                              Text(
                                "As seen..",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontFamily: "Montserrat",
                                ),
                              ),
                              SizedBox(width: 20),
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
              child: Text(
                "Can I make art with code?",
                style: TextStyle(fontSize: isMobile ? 14 : 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}