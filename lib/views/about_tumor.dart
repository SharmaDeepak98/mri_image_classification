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
        // backgroundColor: color1,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFFFDD1CE),
                Color(0xFF3A99FF),
                Color(0xFF9AD0DC)
              ],
            ),
          ),
        ),
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomCenter,
        //     colors: <Color>[
        //       Color(0xFFFDD1CE),
        //       Color(0xFF3A99FF),
        //       Color(0xFF9AD0DC)
        //     ],
        //   ),
        // ),
        child: ListView.builder(
          itemCount: tumors.length,
          itemBuilder: (context, index) {
            Tumor tumor = tumors[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: ExpansionTileWidget(
                  title: tumor.tumorName,
                  description: tumor.tumorDes,
                  index: (index + 1).toString(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
