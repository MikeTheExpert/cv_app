import 'package:cv_app/assets/cv_data/cv_data.dart';
import 'package:cv_app/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/cv_details_container_widget.dart';

class CvItemListPage extends StatelessWidget {
  const CvItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = workHistory.toList(); // convert Set to List for indexing

    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Work History")),
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return CvDetailsContainerWidget(item: item);
          },
        ),
      ),
    );
  }
}
