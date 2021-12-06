import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    debugPrint('Largura: ${mediaQuery.size.width}');
    debugPrint('Altura: ${mediaQuery.size.height}');
    debugPrint('Orientação: ${mediaQuery.orientation}');
    debugPrint('Padding Top: ${mediaQuery.padding.top}');
    debugPrint('Tamanho AppBarDefault: $kToolbarHeight');

    final statusBar = mediaQuery.padding.top;
    final bodyHeight = mediaQuery.size.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.size.width * .5,
              height: bodyHeight * .5,
            ),
            Container(
              color: Colors.green,
              width: mediaQuery.size.width,
              height: bodyHeight * .5,
            ),
          ],
        ),
      ),
    );
  }
}
