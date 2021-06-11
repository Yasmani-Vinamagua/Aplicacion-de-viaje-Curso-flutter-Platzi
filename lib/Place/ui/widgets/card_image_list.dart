import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = 300.0;
    double heigth = 350.0;
    double left = 20.0;
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWidthFabIcon(
            pathImage: "assets/img/beach.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: heigth,
            left: left,
          ),
          CardImageWidthFabIcon(
            pathImage: "assets/img/beach_palm.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: heigth,
            left: left,
          ),
          CardImageWidthFabIcon(
            pathImage: "assets/img/mountain.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: heigth,
            left: left,
          ),
        ],
      ),
    );
  }
}
