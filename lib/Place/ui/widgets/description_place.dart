import 'package:flutter/material.dart';
import 'package:platzi_flutter_application_1/widgets/buttonpurple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    //Title and stars for body
    final star = Container(
      margin: EdgeInsets.only(
        top: 350.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );
    final star_half = Container(
      margin: EdgeInsets.only(
        top: 350.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(
        top: 350.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(
          top: 350.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Text(
          namePlace,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      Row(
        children: <Widget>[
          star,
          star,
          star,
          star,
          star_border,
        ],
      )
    ]);
    //Description for body App
    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff56575a)),
      ),
    );
    //Present in the column title, stars and description
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        description,
        ButtonPurple(
          buttonText: "Navigate",
          onPressed: () {},
        ),
      ],
    );
  }
}
