import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/home_page.dart' as navegacao;
import 'package:flutter_mao_na_massa/navegacao/page1.dart';
import 'package:flutter_mao_na_massa/navegacao/page2.dart';
import 'package:flutter_mao_na_massa/navegacao/page3.dart';
import 'package:flutter_mao_na_massa/navegacao/page4.dart';
import 'package:flutter_mao_na_massa/navegacao_params/detalhe.dart';
import 'package:flutter_mao_na_massa/navegacao_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: const navegacao.HomePage(),
      // home: const ImagesPage(),
      initialRoute: '/navegacao_params',
      routes: {
        navegacao.HomePage.routeName: (_) => const navegacao.HomePage(),
        Page1.routeName: (_) => const Page1(),
        Page2.routeName: (_) => const Page2(),
        Page3.routeName: (_) => const Page3(),
        Page4.routeName: (_) => const Page4(),
        '/navegacao_params': (_) => const Lista(),
        '/detalhe': (_) => const Detalhe(),
      },
    );
  }
}
