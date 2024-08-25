import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({super.key});

  final List stroryitems = [
    {"pseudo": "Ben", "photo": "images/benkat.jpg"},
    {"pseudo": "Simbi", "photo": "images/simbi.jpg"},
    {"pseudo": "Inb", "photo": "images/inb.png"},
    {"pseudo": "Maisha", "photo": "images/bienfait.jpg"},
    {"pseudo": "Marry", "photo": "images/kiesey.jpeg"},
    {"pseudo": "Kasereka", "photo": "images/kase.jpg"},
    {"pseudo": "Chris", "photo": "images/chris_siku.jpeg"},
    {"pseudo": "Mbanga", "photo": "images/mbanga.jpeg"},
    {"pseudo": "Melanie", "photo": "images/shaffron.jpeg"},
    {"pseudo": "Gerard", "photo": "images/dushane.jpeg"},
    {"pseudo": "Aron", "photo": "images/aron.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: stroryitems.map((story) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 1),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'images/cercle.png',
                        height: 70,
                      ),
                      Image.asset(
                        'images/cercle.png',
                        height: 68,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        backgroundImage: AssetImage(story['photo']),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  Text(
                    story['pseudo'],
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ));
  }
}
