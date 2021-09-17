import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

List allGirl = [
  {
    "name": "Miku Nakado",
    "picture":
        "https://www.nautiljon.com/images/breves/00/67/1606297631020_image.jpg"
  },
  {
    "name": "Nino Nakado",
    "picture":
        "https://ih1.redbubble.net/image.823032989.0794/flat,750x,075,f-pad,750x1000,f8f8f8.u1.jpg"
  }
];

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.7,
        child: Card());
  }
}

// ignore: must_be_immutable
class Card extends StatelessWidget {
  int girlListindex = allGirl.length;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 120),
      child: Container(
        height: size.height,
        child: TinderSwapCard(
          maxHeight: size.height * 0.75,
          maxWidth: size.width,
          minHeight: size.height * 0.6,
          minWidth: size.width * 0.75,
          cardBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 2)
                  ]),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(children: [
                    Container(
                      width: size.width,
                      height: size.height,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: NetworkImage(allGirl[index]["picture"]),
                      )),
                    )
                  ]))),
          totalNum: girlListindex,
        ),
      ),
    );
  }
}
