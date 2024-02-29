import 'package:flutter/material.dart';
import 'package:mri_detection/pages/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.showHome});
  final bool showHome;

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/images/brain.png"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(showHome: showHome),
    );
  }
}
