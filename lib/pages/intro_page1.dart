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
      color: color1,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10.0),
            Image.asset(
              image,
              height: 140.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 40.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              description,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
