import 'package:flutter/material.dart';
import 'package:mri_detection/extensions/app_color.dart';
import 'package:mri_detection/widgets/expansion_tile_widget.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mri_detection/model/faq_modal.dart';

class faq extends StatefulWidget {
  const faq({super.key});

  @override
  State<faq> createState() => _faqState();
}

class _faqState extends State<faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          leading: const Icon(
            LineIcons.question,
            color: Colors.black,
          ),
          title: Text(
            'FAQ',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: color1,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: FAQs.length,
          itemBuilder: (context, index) {
            faqModal faq = FAQs[index];
            return ExpansionTileWidget(title: faq.title, description: faq.description);
          },
        ));
  }
}
