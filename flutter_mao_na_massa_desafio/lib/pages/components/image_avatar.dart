import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  final String imgUrl;

  const ImageAvatar({required this.imgUrl, Key? key}) : super(key: key);

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
                Color(0xFFDAA86B),
                Color(0xFF600025),
              ],
              begin: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
          ),
        ),
      ],
    );
  }
}
