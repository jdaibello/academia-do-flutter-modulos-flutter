import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  static const String routeName = '/page2';
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'page3'),
                    builder: (context) => const Page3(),
                  ),
                );
              },
              child: const Text('Página 3 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page3.routeName);
              },
              child: const Text('Página 3 via NAMED'),
            ),
          ],
        ),
      ),
    );
  }
}
