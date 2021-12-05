import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/home_page.dart';

class Page4 extends StatelessWidget {
  static const String routeName = '/page4';
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     settings: const RouteSettings(name: 'page1'),
                //     builder: (context) => const Page1(),
                //   ),
                //   ModalRoute.withName('page2'),
                // );
                // Removendo todas as páginas
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    settings: const RouteSettings(name: 'homepage'),
                    builder: (context) => const HomePage(),
                  ),
                  (route) => false,
                );
              },
              child: const Text('Página 1 via PAGE com pushAndRemoveUntil'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  HomePage.routeName,
                  (route) => false,
                );
              },
              child: const Text(
                'Página 1 via PAGE com pushNamedAndRemoveUntil',
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
