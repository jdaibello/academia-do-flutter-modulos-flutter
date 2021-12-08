import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa_desafio/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      routes: {
        '/': (_) => const HomePage(),
      },
    );
  }
}
