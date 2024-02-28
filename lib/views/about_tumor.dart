import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mri_detection/widgets/expansion_tile_widget.dart';
import 'package:mri_detection/extensions/app_color.dart';
// import 'package:mri_detection/tumor_Detail/tumorDetails.dart';
import 'package:mri_detection/model/tumor.dart';

class AboutTumor extends StatefulWidget {
  const AboutTumor({super.key});

  @override
  State<AboutTumor> createState() => _AboutTumorState();
}

class _AboutTumorState extends State<AboutTumor> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          LineIcons.brain,
          color: Colors.black,
        ),
        title: const Text(
          'Available Tumors',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: color1,
      ),
      body: ListView.builder(
        itemCount: tumors.length,
        itemBuilder: (context, index) {
          Tumor tumor = tumors[index];
          return Card(
            child: ExpansionTileWidget(
              title: tumor.tumorName,
              description: tumor.tumorDes,
              image: Image.asset(tumor.imageUrl,
                  fit: BoxFit.cover,
                  width: screenWidth * 0.4,
                  height: screenWidth * 0.4),
              index: (index + 1).toString(),
            ),
          );
        },
      ),
    );
  }
}
