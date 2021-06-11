import 'package:flutter/material.dart';
import 'package:platzi_flutter_application_1/Place/ui/widgets/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review(
            "assets/img/people.jpg", "Varuna Yasas", "1 review", "hermosa app"),
        Review("assets/img/ann.jpg", "Varuna Yasas", "2 review",
            "fea hermosa app"),
        Review("assets/img/girl.jpg", "Varuna Yasas", "4 review",
            "mas o menos hermosa app")
      ],
    );
  }
}
