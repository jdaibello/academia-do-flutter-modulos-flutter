import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page1.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  settings: const RouteSettings(name: 'page1'),
                  builder: (context) => const Page1(),
                ));
              },
              child: const Text('Página 1 via PAGE'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Page1.routeName);
              },
              child: const Text('Página 1 via NAMED'),
            ),
          ],
        ),
      ),
    );
  }
}
