import 'package:cv_app/pages/about_the_dev_page.dart';
import 'package:cv_app/pages/cv_item_list_page.dart';
import 'package:cv_app/pages/hero_landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hire a Dev Today!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.brown)),
      routes: {
        // '/': (context) => SplashScreen(),
        // '/home': (context) => MyHomePage(),
        '/hero_landing': (context) => HeroTilePage(),
        '/about_me': (context) => AboutTheDev(),
        '/work_history': (context) => CvItemListPage(),
      },
      home: HeroTilePage(),
    );
  }
}

