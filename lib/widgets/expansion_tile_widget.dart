import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  ExpansionTileWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.index});

  final String title;
  final String description;
  final String index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          childrenPadding:
              const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 10.0),
          leading: Text(
            '$index.',
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
            Text(
              description,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black.withOpacity(0.7),
                letterSpacing: 0.4,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
