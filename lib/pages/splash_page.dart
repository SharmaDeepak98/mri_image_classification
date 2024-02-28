import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mri_detection/extensions/app_color.dart';
import 'package:mri_detection/pages/homePage.dart';
import 'package:mri_detection/pages/onboarding_page.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key, required this.showHome}) : super(key: key);
  final bool showHome;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              showHome ? const HomePage() : const OnBoardingPage(),
        ),
      );
    });
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.hourGlass
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = const Color(0xFF003663)
      ..backgroundColor = const Color(0xFF003663)
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = true;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/brain.png',
              width: 235,
              height: 130,
            ),
            const SizedBox(height: 10),
            Text(
              'Brain Tumor Classification',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.blue.withOpacity(0.4),
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
