import 'dart:io';

import 'package:flutter/material.dart';
import 'package:platzi_flutter_application_1/widgets/floating_action_button_green.dart';

class CardImageWidthFabIcon extends StatelessWidget {
  final double height;
  final double width;
  double left;
  final String pathImage;
  VoidCallback onPressFabIcon;
  final IconData iconData;

  CardImageWidthFabIcon({
    Key key,
    @required this.pathImage,
    @required this.height,
    @required this.width,
    @required this.onPressFabIcon,
    @required this.iconData,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        left: left,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0),
            ),
          ]),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(
          iconData: iconData,
          onPressed: onPressFabIcon,
        ),
      ],
    );
  }
}
