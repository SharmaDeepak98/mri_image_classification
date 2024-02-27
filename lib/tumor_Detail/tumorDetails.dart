import 'package:flutter/material.dart';
import 'package:mri_detection/extensions/app_color.dart';
import 'package:mri_detection/model/tumor.dart';

class TumorDetails extends StatelessWidget {
  final Tumor tumor;
  const TumorDetails({super.key, required this.tumor});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          tumor.tumorName,
          style:
              TextStyle(fontSize: 20.0, letterSpacing: 1, color: Colors.white),
        ),
        backgroundColor: color1,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(tumor.imageUrl,
                    fit: BoxFit.cover,
                    width: screenWidth * 0.7,
                    height: screenWidth * 0.7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                tumor.tumorDes,
                style: TextStyle(fontSize: 15),
              ),
            ),
            // Add more images here
          ],
        ),
      ),
    ));
  }
}
