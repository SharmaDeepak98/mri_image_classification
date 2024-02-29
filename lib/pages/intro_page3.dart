import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key, key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              Image.asset(
                "assets/images/brain.png",
                height: 140.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Ready to Get Started?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                ' Let\'s get started and make a positive impact on healthcare together!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              //const SizedBox(height: 8.0),
              // ElevatedButton(
              //   onPressed: () {
              //     _requestPermission();
              //   },
              //   style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all<Color>(color1),
              //   ),
              //   child: const Text('Get Permission'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
