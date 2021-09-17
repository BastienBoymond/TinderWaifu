import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.pink,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('Menu icon pressed');
            }),
      ],
      title: title,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
