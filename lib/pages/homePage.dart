import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mri_detection/views/about_developer.dart';
import 'package:mri_detection/views/scanner_view.dart';
import 'package:mri_detection/views/about_tumor.dart';
import 'package:mri_detection/views/faq.dart';
import 'package:mri_detection/extensions/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    ScannerView(),
    AboutTumor(),
    FAQ(),
    AboutDeveloper(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              color: color1,
              boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.3))
              ],
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: color2,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: color2,
                color: Colors.black,
                tabs: const [
                  GButton(
                    icon: LineIcons.retroCamera,
                    text: 'Scanner',
                  ),
                  GButton(
                    icon: LineIcons.search,
                    text: 'Tumors',
                  ),
                  GButton(
                    icon: LineIcons.question,
                    text: 'FAQ',
                  ),
                  GButton(
                    icon: LineIcons.brain,
                    text: 'About Developer',
                    padding: EdgeInsets.all(8.0),
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
