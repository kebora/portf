import 'package:flutter/material.dart';
import 'package:portf/colors.dart';
import 'package:portf/widgets/module_title_template.dart';

class GraphicsView extends StatelessWidget {
  final List<LogoItem> logos = [
    LogoItem(
      imagePath: "assets/images/islogo/sanslogo.png",
      title: "Sans Afrique",
      description: "Sans sells African made apparel. Rights to logo owned by Sylvia Ayuma.",
      year: 2025,
    ),
    LogoItem(
      imagePath: "assets/images/islogo/kg.png",
      title: "Kebora Group",
      description: "Integration of several patterns for a modern logo.",
      year: 2025,
    ),
  ];

  GraphicsView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ModuleTitleTemplate(title: "Logos and Graphics"),
            const SizedBox(height: 24),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile ? 1 : 2,
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
                childAspectRatio: isMobile ? 0.9 : 1.2,
              ),
              itemCount: logos.length,
              itemBuilder: (context, index) {
                return _LogoCard(logo: logos[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LogoItem {
  final String imagePath;
  final String title;
  final String description;
  final int year;

  LogoItem({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.year,
  });
}

class _LogoCard extends StatelessWidget {
  final LogoItem logo;

  const _LogoCard({required this.logo});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return Card(
      color: cardBackgroundColor,
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 12.0 : 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: logo.imagePath.endsWith('.svg')
                    ? // Use flutter_svg package for SVG rendering
                    // SvgPicture.asset(logo.imagePath)
                    Image.asset(logo.imagePath) // Fallback for PNG
                    : Image.asset(logo.imagePath),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              logo.title,
              style: TextStyle(
                fontSize: isMobile ? 20 : 24,
                color: Colors.amber.shade100,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              logo.description,
              style: const TextStyle(
                fontFamily: "Montserrat",
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              '© ${logo.year}',
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 12,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}