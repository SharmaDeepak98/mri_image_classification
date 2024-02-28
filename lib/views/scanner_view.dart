import 'package:flutter/material.dart';
import 'package:mri_detection/extensions/app_color.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:flutter_tflite/flutter_tflite.dart';

class ScannerView extends StatefulWidget {
  const ScannerView({super.key});

  @override
  State<ScannerView> createState() => _ScannerViewState();
}

class _ScannerViewState extends State<ScannerView> {
  late ImagePicker picker;
  File? _image;
  String dogBreed = '';
  String dogProb = '';
  late List output;

  @override
  void initState() {
    super.initState();
    picker = ImagePicker();
    loadModel().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() async {
    await Tflite.close();
    super.dispose();
  }

  imageFromGallery() async {
    final XFile? pickFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickFile == null) return;
    setState(() {
      _image = File(pickFile.path);
    });
    detectImage(_image!);
  }

  imageFromCamera() async {
    final XFile? pickFile = await picker.pickImage(source: ImageSource.camera);
    _image = File(pickFile!.path);

    setState(() {
      _image;
      detectImage(_image!);
    });
  }

  detectImage(File image) async {
    List? recognitions;
    try {
      recognitions = await Tflite.runModelOnImage(
        path: image!.path,
        imageMean: 127.5,
        imageStd: 127.5,
        numResults: 2,
        threshold: 0.5,
        asynch: true,
      );
    } catch (e) {
      print('Exception occurred 💥💥💥: $e');
    }
    print('Print: $recognitions');
    setState(() {
      output = recognitions!;
      dogBreed = output[0]['label'];
      dogProb = (output[0]['confidence'] * 100).toStringAsFixed(2);
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/ml/model.tflite",
      labels: "assets/ml/labels.txt",
      numThreads: 1,
      isAsset: true,
      useGpuDelegate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20.0),
            height: screenHeight * 0.42,
            width: screenWidth,
            decoration: BoxDecoration(
              color: color2,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.grey,
                  offset: Offset(10, 10),
                )
              ],
              image: _image == null
                  ? const DecorationImage(
                      image: AssetImage('assets/images/brain.png'))
                  : DecorationImage(
                      image: FileImage(File(_image!.path)),
                      fit: BoxFit.cover,
                    ),
            ),
            child: _image == null
                ? Column(
                    children: [
                      SizedBox(height: screenHeight * 0.339),
                      const Text(
                        'MRI Image Classification',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
          const SizedBox(height: 30),
          const Text(
            'Brain Tumor Prediction',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
              //color: color,
            ),
          ),
          Text(
            _image == null
                ? 'Precision - Brain Tumor'
                : '$dogProb% - $dogBreed',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.green,
              letterSpacing: 0.4,
            ),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                icon: Icons.camera_alt,
                title: 'Take Photo',
                onTap: () {
                  imageFromCamera();
                },
              ),
              const SizedBox(width: 50),
              CustomButton(
                icon: Icons.photo_library,
                title: 'Upload Photo',
                onTap: () {
                  imageFromGallery();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});
  IconData? icon;
  String? title;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        onTap();
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: color2, width: 8),
        ),
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: Column(
          children: [
            Icon(icon!, color: color2, size: 70),
            Text(
              title!,
              style: TextStyle(
                color: color2,
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            )
          ],
        ), // Adjust icon size
      ),
    );
  }
}