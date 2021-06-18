import 'package:flutter/cupertino.dart';

class Place {
  String id;
  String name;
  String description;
  String urlImage;
  int likes;
  bool liked;
  //User userOwner;

  Place(
      {Key key,
      @required this.name,
      @required this.description,
      @required this.urlImage,
      @required this.likes,
      this.liked,
      this.id
      //@required this.userOwner
      });
}
