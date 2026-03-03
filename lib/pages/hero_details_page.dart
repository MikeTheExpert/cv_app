//details for the corresponding hero page

import 'package:cv_app/widgets/hero_details_container_widget.dart';
import 'package:cv_app/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String heroTag;
  final String description;

  const DetailPage({
    super.key,
    required this.heroTag,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final imageString = 'lib/assets/hero_images/$heroTag.png';

    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Detail Page"))),
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(8.0),
                  child: Image.asset(
                    'lib/assets/hero_images/cvDetails.png',
                    height: MediaQuery.heightOf(context)/4,
                    width: MediaQuery.widthOf(context),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Hero(
                tag: heroTag,
                child: DetailsContainerWidget(description: description),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
