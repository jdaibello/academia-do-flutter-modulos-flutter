import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa_desafio/pages/components/image_avatar.dart';

class Story extends StatelessWidget {
  final String username;
  final String imageUrl;
  final bool isFirst;

  const Story({
    required this.username,
    required this.imageUrl,
    this.isFirst = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: isFirst
              ? const EdgeInsets.only(top: 8, left: 16, right: 16)
              : const EdgeInsets.only(top: 8, right: 16),
          child: ImageAvatar(imgUrl: imageUrl),
        ),
        Padding(
          padding: isFirst
              ? const EdgeInsets.only(top: 8, left: 16, right: 16)
              : const EdgeInsets.only(top: 8, right: 16),
          child: Text(
            username,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
