import 'package:flutter/material.dart';
import 'package:mri_detection/extensions/app_color.dart';
import 'package:mri_detection/pages/home_page.dart';
import 'intro_page1.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const <Widget>[
              IntroPage1(
                image: "assets/images/brain.png",
                title: "Powerful Image Classification",
                description:
                    "Experience the power of our cutting-edge image classification technology. Upload your MRI scans effortlessly and let our intelligent algorithms analyze and classify brain tumors accurately.",
              ),
              IntroPage2(
                image: "assets/images/brain.png",
                title: 'Privacy and Security',
                description:
                    'Your privacy is our priority. Rest assured, your MRI scans are processed locally on your device, ensuring confidentiality. We do not store or transmit any personal information.',
              ),
              IntroPage3(),
            ],
          ),
/////////////////////////////////[PAGE INDICATOR]//////////////
          Container(
            alignment: const Alignment(0, 0.75),
            padding: const EdgeInsets.only(bottom: 14, left: 14, right: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    dotWidth: 12,
                    dotHeight: 12,
                    activeDotColor: Colors.white,
                    dotColor: Colors.white.withOpacity(0.4),
                  ),
                ),

                const SizedBox(height: 20),
//////////////////[ONBOARDING BUTTON]////////////////////////////
                InkWell(
                  onTap: () async {
                    if (onLastPage) {
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('showHome', true);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    } else {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease);
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        onLastPage ? 'Get started' : 'Next',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
