import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';
import 'package:mri_detection/extensions/app_color.dart';

class AboutDeveloper extends StatefulWidget {
  const AboutDeveloper({super.key});

  @override
  State<AboutDeveloper> createState() => _AboutDeveloperState();
}

class _AboutDeveloperState extends State<AboutDeveloper> {
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
          'About Developer',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              letterSpacing: 1,
              fontWeight: FontWeight.bold),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(4.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 2.0),
                  ListTile(
                    leading: Icon(
                      LineIcons.code,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Deepak Sharma',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '076BCT029',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      LineIcons.laptopCode,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Kritartha Bikram Shah',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '076BCT041',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      LineIcons.codeBranch,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Lijesh Subedi',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '076BCT043',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      LineIcons.codeFile,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Dipesh Adhikari',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      '076BCT031',
                      style: TextStyle(
                        fontSize: 13,
                        letterSpacing: 0.6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
