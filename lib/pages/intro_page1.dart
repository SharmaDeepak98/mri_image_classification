import 'package:flutter/material.dart';
import '../extensions/app_color.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: color1,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg_onboarding1.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFF6E9),
              ),
            ),
            const SizedBox(height: 12.0),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFFFF6E9).withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 130),
          ],
        ),
      ),
    );
  }
}
