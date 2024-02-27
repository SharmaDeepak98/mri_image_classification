import 'package:flutter/material.dart';
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
        title: Text(
          'Available Tumors',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: color1,
      ),
      body: ListView.builder(
        itemCount: tumors.length,
        itemBuilder: (context, index) {
          Tumor tumor = tumors[index];
          return Card(
            child: Container(
              
              // child: ListTile(
              //    shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              //   side: BorderSide(width: 2, color: Colors.transparent),
              // ),
              //   hoverColor: color2,
              //   // tileColor: color2,
              //   title: Text('${index+1}.  ${tumor.tumorName}'),
              //   onTap: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => TumorDetails(tumor: tumor)));
              //   },
              // ),
              child: ExpansionTileWidget(title: '${index+1}.  ${tumor.tumorName}',
              description: tumor.tumorDes,
              image:Image.asset(tumor.imageUrl,fit: BoxFit.cover,
                    width: screenWidth * 0.4,
                    height: screenWidth * 0.4)
              )
            ),
          );
        },
      ),
    );
  }
}

