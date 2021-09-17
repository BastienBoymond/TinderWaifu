import 'package:flutter/material.dart';
import 'appbar.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text('My Tinder Waifu',
                style: Theme.of(context).primaryTextTheme.headline5),
          ),
          const Expanded(
            child: Center(child: Text('Hello, world!')),
          ),
        ],
      ),
    );
  }
}
