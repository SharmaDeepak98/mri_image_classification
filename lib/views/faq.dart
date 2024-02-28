import 'package:flutter/material.dart';
import 'package:mri_detection/extensions/app_color.dart';
import 'package:mri_detection/widgets/expansion_tile_widget.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mri_detection/model/faq_modal.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            LineIcons.question,
            color: Colors.black,
          ),
          title: const Text(
            'FAQ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: color1,
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: FAQs.length,
          padding: const EdgeInsets.only(bottom: 4.0),
          itemBuilder: (context, index) {
            FaqModal faq = FAQs[index];
            return ExpansionTileWidget(
              title: faq.title,
              description: faq.description,
              index: (index + 1).toString(),
            );
          },
        ));
  }
}
