import 'package:flutter/material.dart';
import 'package:platzi_flutter_application_1/Place/ui/widgets/card_image_list.dart';
import 'package:platzi_flutter_application_1/widgets/gradient_back.dart';

class HeaderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack(height: 250.0),
        CardImageList(),
      ],
    );
  }
}
