import 'package:flutter/material.dart';
import 'package:mri_detection/extensions/app_color.dart';

class ScannerView extends StatefulWidget {
  const ScannerView({super.key});

  @override
  State<ScannerView> createState() => _ScannerViewState();
}

class _ScannerViewState extends State<ScannerView> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.44,
            width: screenWidth,
            decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Image.asset('images/brain.png'),
          ),
 SizedBox(height: 130), // Add some spacing between the image container and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              customButton(icon: Icons.camera_alt, title: 'Take Photo'),
              
              SizedBox(width: 50), // Add some spacing between buttons
              customButton(icon: Icons.photo_library,title: 'Upload Photo',),
            ],
          )],
      ),
    );
  }
}

class customButton extends StatelessWidget {
   customButton({
    super.key,required this.icon,required this.title
  });
  IconData? icon;
  String? title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Action to select a photo from the gallery
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          border: Border.all(color: color2, width: 10), // Add border
        ),
        padding: EdgeInsets.all(10), // Adjust padding to change button size
        child: Column(
          children: [
            Icon(icon!,color: color2, size: 70),
            SizedBox(height: 5,)
            ,
            Text(title!,style: TextStyle(color: color2,fontSize: 15,fontWeight:FontWeight.w900 ),)
          ],
        ), // Adjust icon size
      ),
    );
  }
}




 