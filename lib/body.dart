import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

List allGirl = [
  {
    "name": "Miku Nakado",
    "anime": "The quintessential quintuplets",
    "picture":
        "https://www.nautiljon.com/images/breves/00/67/1606297631020_image.jpg"
  },
  {
    "name": "Nino Nakado",
    "anime": "The quintessential quintuplets",
    "picture":
        "https://ih1.redbubble.net/image.823032989.0794/flat,750x,075,f-pad,750x1000,f8f8f8.u1.jpg"
  }
];

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(),
    );
  }
}

// ignore: must_be_immutable
class Card extends StatelessWidget {
  int girlListindex = allGirl.length;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Container(
        child: TinderSwapCard(
          totalNum: girlListindex,
          maxHeight: size.height,
          maxWidth: size.width,
          minHeight: size.height * 0.6,
          minWidth: size.width * 0.75,
          cardBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 2)
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(allGirl[index]["picture"]),
                    )),
                  ),
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Colors.black.withOpacity(0.25),
                          Colors.black.withOpacity(0)
                        ],
                            end: Alignment.topCenter,
                            begin: Alignment.bottomCenter)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: size.width * 0.72,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        allGirl[index]["name"],
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        allGirl[index]["anime"],
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
