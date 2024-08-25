import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({super.key});

  final List postItems = [
    {
      "pseudo": "Kevin",
      "photoProfile": "images/kevin durant.webp",
      "description": "✨👍Une fois reunis, l'afrique fera mal 👍👍",
      "postPhoto": "images/postphoto/muzalendo.jpg"
    },
    {
      "pseudo": "Aron",
      "photoProfile": "images/aron.jpeg",
      "description": "💻💻 Success is not how long you stand ✨✨",
      "postPhoto": "images/julien.jpg"
    },
    {
      "pseudo": "Melanie",
      "photoProfile": "images/shaffron.jpeg",
      "description": "🎧🎧 One of the big moment in sera hotel 🎧!",
      "postPhoto": "images/postphoto/gaz.jpg"
    },
    {
      "pseudo": "simbi",
      "photoProfile": "images/simbi.jpg",
      "description":
          "🎙️🎙️ **101.FM** - L'émission qui vous fait découvrir des jeunes talents 🌟",
      "postPhoto": "images/inb1.png"
    },
    {
      "pseudo": "chris",
      "photoProfile": "images/chris_siku.jpeg",
      "description": "😊🎉✨👍💻🌟🚀🎧📚🎨mon premier paragraphe avec de texte",
      "postPhoto": "images/postphoto/arbre.jpeg"
    },
    {
      "pseudo": "clermont",
      "photoProfile": "images/kiesey.jpeg",
      "description": "😊🎉✨👍💻🌟🚀🎧📚🎨mon premier paragraphe avec de texte",
      "postPhoto": "images/postphoto/discord.jpg"
    },
    {
      "pseudo": "mbanga",
      "photoProfile": "images/mbanga.jpeg",
      "description": "mon premier paragraphe avec de texte",
      "postPhoto": "images/postphoto/electron.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post['photoProfile']),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    post['pseudo'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'images/postphoto/certify.png',
                    height: 13,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
            Container(
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      post['postPhoto'],
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.message_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.send_outlined),
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_remove_outlined),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(
                      post['photoProfile'],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Aimer par ",
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: post['pseudo'],
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        TextSpan(
                          text: ' et ',
                        ),
                        TextSpan(
                          text: ' 123 autre personnes ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        "see more",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "See 104 comments",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "10 min ago",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      ),
                      Text(
                        " Translate",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
