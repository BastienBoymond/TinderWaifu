import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class MyFooterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.pink,
              )),
        ],
      ),
    );
  }
}
