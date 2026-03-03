//my composition page.
//floating button should display my various contact info like: github, phone no, email, linkedIn?

import 'package:cv_app/assets/cv_data/cv_data.dart';
import 'package:cv_app/widgets/floating_action_info_display_container.dart';
import 'package:cv_app/widgets/navigation_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/dev_description_container_widget.dart';

class AboutTheDev extends StatefulWidget {
  const AboutTheDev({super.key});

  @override
  State<AboutTheDev> createState() => _AboutTheDevState();
}

class _AboutTheDevState extends State<AboutTheDev> {
  bool showOptions = false;
  
  @override
  Widget build(BuildContext context) {
    final expList = academicBackground.toList();
    final skillList = skillSet.toList();
    final optionList = options;

    void toggleOptions() {
      setState(() {
        showOptions = !showOptions;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Get To Know Me!")),
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleOptions,
        child: Icon(Icons.badge_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: NavBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: const Text(
                  "Experience",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                children: expList.map((item) {
                  return DevDescriptionContainerWidget(
                    item: item,
                    color: Colors.brown,
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionTile(
                title: const Text(
                  "Skills",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                children: skillList.map((item) {
                  return DevDescriptionContainerWidget(
                    item: item,
                    color: Colors.brown,
                  );
                }).toList(),
              ),
            ),
            if (showOptions)
              Padding(
                padding: const EdgeInsets.only (top :8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: HoveringOptionsSheet(
                    showOptions: showOptions,
                    options: optionList,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
