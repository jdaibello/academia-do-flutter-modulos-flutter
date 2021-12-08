import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        children: const [
          // SizedBox(
          //   width: 100,
          //   height: 100,
          //   child: CircleAvatar(
          //     backgroundImage: NetworkImage(
          //       'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Lionel_Messi_20180626.jpg/200px-Lionel_Messi_20180626.jpg',
          //     ),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.all(8),
            child: ImageAvatar(
              urlImage:
                  'https://upload.wikimedia.org/wikipedia/commons/8/83/Bra-Cos_%281%29_%28cropped%29.jpg',
            ),
          ),
          ImageAvatar(
            urlImage:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Lionel_Messi_20180626.jpg/200px-Lionel_Messi_20180626.jpg',
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;

  const ImageAvatar({required this.urlImage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.red,
                Colors.black,
              ],
              begin: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red,
              ),
              child: const Text(
                'AO VIVO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
