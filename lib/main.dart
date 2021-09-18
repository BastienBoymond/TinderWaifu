import 'package:flutter/material.dart';
import 'appbar.dart';
import 'body.dart';
import 'footer.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: Text('Tinder Waifu')),
      body: Center(child: MyBody()),
      bottomNavigationBar: MyFooterBar(),
    );
  }
}
