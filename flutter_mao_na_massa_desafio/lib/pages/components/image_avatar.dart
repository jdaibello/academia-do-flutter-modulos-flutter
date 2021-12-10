import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  final String imgUrl;
  final bool isLive;

  const ImageAvatar({
    required this.imgUrl,
    this.isLive = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 75,
          height: 75,
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
          width: 75,
          height: 75,
          padding: const EdgeInsets.all(4),
          child: CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
          ),
        ),
        isLive
            ? SizedBox(
                width: 75,
                height: 75,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF4A0035),
                          Color(0xFFAF1247),
                        ],
                        begin: Alignment.topLeft,
                      ),
                    ),
                    child: const Text(
                      'AO VIVO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
