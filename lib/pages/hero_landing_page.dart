import 'package:cv_app/assets/cv_data/app_detail_writeup.dart';
import 'package:cv_app/assets/cv_data/hero_page_writeup.dart';
import 'package:cv_app/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/hero_container_widget.dart';
import 'hero_details_page.dart';

class HeroTilePage extends StatelessWidget {
  const HeroTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount;
    if (screenWidth < 600) {
      crossAxisCount = 2;
    } else if (screenWidth < 900) {
      crossAxisCount = 3;
    } else {
      crossAxisCount = 4;
    }

    final entries = heroDetails.entries
        .toList(); // used for the hero landing page summary

    final appHeroDetail = appDetails.entries
        .toList(); // used for the details page summary

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text("App Library", textAlign: TextAlign.center),
        ),
      ),
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: GridView.builder(
          padding: const EdgeInsets.all(12),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemCount: entries.length,
          itemBuilder: (context, index) {
            final entry = entries[index];
            final appDetail = appHeroDetail[index];
            final tag = entry.key;
            final value = entry.value;
            final description = appDetail.value;
            final imageString = 'lib/assets/hero_images/$tag.png';

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        DetailPage(heroTag: tag, description: description),
                  ),
                );
              },
              child: Hero(
                tag: tag,
                child: HeroTileContainer(imageString: imageString,
                  value: value,
                ), // use the new widget
              ),
            );
          },
        ),
      ),
    );
  }
}
