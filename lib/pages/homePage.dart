// import 'package:flutter/material.dart';

// class homePage extends StatefulWidget {
//   const homePage({super.key});

//   @override
//   State<homePage> createState() => _homePageState();
// }

// class _homePageState extends State<homePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      body:SafeArea(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,

//   children: [
//   Container(
//     height: MediaQuery.of(context).size.height*0.35,
//     decoration: BoxDecoration(
//       color: Colors.red,
//       borderRadius: BorderRadius.only(
//         bottomLeft: Radius.circular(40),
//         bottomRight: Radius.circular(40)
//       )
//     ),
//     child: Text('homepage'),
//   )
// ]),
//      ) ,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mri_detection/views/about_developer.dart';
import 'package:mri_detection/views/scanner_view.dart';
import 'package:mri_detection/views/about_tumor.dart';
import 'package:mri_detection/views/faq.dart';
import 'package:mri_detection/extensions/app_color.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    ScannerView(),
    AboutTumor(),
    faq(),
    AboutDeveloper(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            
            color: color1,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.3),
              )
            ],
            borderRadius:const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: color2,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: color2,
              color: Colors.black,
              tabs: [
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
    );
  }
}
