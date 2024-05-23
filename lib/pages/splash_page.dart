import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mri_detection/pages/home_page.dart';
import 'package:mri_detection/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key, required this.showHome}) : super(key: key);
  final bool showHome;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool showText = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 000), () {
      setState(() {
        showText = true;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              widget.showHome ? const HomePage() : const OnBoardingPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
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
              'assets/images/splash.png',
              width: 300,
              height: 160,
            ),
            const SizedBox(height: 10),
            showText
                ? Text(
                    'Brain Tumor Classification',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue.withOpacity(0.7),
                      letterSpacing: 1,
                    ),
                  )
                : const SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
