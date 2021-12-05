import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  static const String routeName = '/page3';
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     settings: const RouteSettings(name: 'page4'),
                //     builder: (context) => const Page4(),
                //   ),
                // );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'page4'),
                    builder: (context) => const Page4(),
                  ),
                );
              },
              // child: const Text('Página 4 via PAGE com pushReplacement'),
              child: const Text('Página 4 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page4.routeName);
              },
              child: const Text('Página 4 via NAMED'),
            ),
          ],
        ),
      ),
    );
  }
}
