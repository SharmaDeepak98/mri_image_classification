import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  ExpansionTileWidget(
      {super.key, required this.title, required this.description,this.image});

  final String title;
  final String description;
 Widget? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ExpansionTile(
          title: Text(
            title,
            
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          children: <Widget>[
            if(image != null) image!,
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
