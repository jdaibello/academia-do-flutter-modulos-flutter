import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page2.dart';

class Page1 extends StatelessWidget {
  static const String routeName = '/page1';
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  settings: const RouteSettings(name: 'page2'),
                  builder: (context) => const Page2(),
                ));
              },
              child: const Text('Página 2 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page2.routeName);
              },
              child: const Text('Página 2 via NAMED'),
            ),
          ],
        ),
      ),
    );
  }
}
