import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart';
import '../extensions/app_color.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key, key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  // String _permissionStatus = '';
  // Future<void> _requestPermission() async {
  //   PermissionStatus status = await Permission.camera.request();
  //   setState(() {
  //     if (status.isGranted) {
  //       _permissionStatus = 'Permission Granted';
  //       Get.snackbar(
  //         _permissionStatus,
  //         'Thank you for your permission.',
  //         snackPosition: SnackPosition.TOP,
  //         duration: const Duration(seconds: 3),
  //         backgroundColor: color1,
  //         colorText: Colors.white,
  //         // padding: EdgeInsets.symmetric(
  //         //   horizontal: 15.0.wp,
  //         //   vertical: 3.0.wp,
  //         // ),
  //       );
  //     } else if (status.isDenied) {
  //       _permissionStatus = 'Permission Denied';
  //       Get.snackbar(
  //         _permissionStatus,
  //         'This app requires the Camera and Gallery permission in order to classify the breed.',
  //         snackPosition: SnackPosition.TOP,
  //         duration: const Duration(seconds: 3),
  //         backgroundColor: color1,
  //         colorText: Colors.black,
  //       );
  //     } else if (status.isPermanentlyDenied) {
  //       _permissionStatus = 'Permission Permanently Denied!';
  //       Get.snackbar(
  //         _permissionStatus,
  //         'This app requires the Camera and Gallery permission in order to classify the breed.',
  //         snackPosition: SnackPosition.TOP,
  //         duration: const Duration(seconds: 3),
  //         backgroundColor: color1,
  //         colorText: Colors.black,
  //       );
  //     }
  //   });
  // }

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
