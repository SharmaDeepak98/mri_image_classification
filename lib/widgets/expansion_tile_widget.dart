import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  ExpansionTileWidget(
      {super.key,
      required this.title,
      required this.description,
      this.image,
      required this.index});

  final String title;
  final String description;
  final String index;
  Widget? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          leading: Text(
            index,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          children: <Widget>[
            //if (image != null) image!,
            ListTile(
              title: Text(
                description,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.7),
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
