import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  FloatingActionButtonGreen({
    Key key,
    @required this.iconData,
    @required this.onPressed,
  });
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  /*void onPressedFav() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Agregaste a tus Favoritos"),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      onPressed: widget.onPressed,
      backgroundColor: Color(0xff11da53),
      mini: true,
      tooltip: "Fav",
      child: Icon(Icons.favorite_border),
      heroTag: null,
    );
  }
}
