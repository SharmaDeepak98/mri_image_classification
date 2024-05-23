import 'package:flutter/material.dart';
import 'package:mri_detection/extensions/app_color.dart';
import 'package:mri_detection/model/tumor.dart';

class TumorDetails extends StatelessWidget {
  final Tumor tumor;
  const TumorDetails({super.key, required this.tumor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          tumor.tumorName,
          style: const TextStyle(
              fontSize: 20.0, letterSpacing: 1, color: Colors.white),
        ),
        backgroundColor: color1,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                tumor.tumorDes,
                style: const TextStyle(fontSize: 15),
              ),
            ),
            // Add more images here
          ],
        ),
      ),
    ));
  }
}
