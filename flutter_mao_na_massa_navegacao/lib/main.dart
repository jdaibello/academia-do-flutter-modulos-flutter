import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa_navegacao/core/navigator_observer_custom.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/detalhe2_page.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/detalhe3_page.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/detalhe_page.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const HomePage(),
          );
        }

        if (settings.name == '/detalhe') {
          final parametro = settings.arguments as String?;
          return MaterialPageRoute(
            builder: (context) => DetalhePage(
              parametro: parametro ?? 'Não foi enviado o parâmetro',
            ),
          );
        }

        if (settings.name == '/detalhe3') {
          return MaterialPageRoute<String>(
            settings: settings,
            builder: (context) => const Detalhe3Page(),
          );
        }
      },
      routes: {
        // '/': (_) => const HomePage(),
        '/detalhe2': (_) => const Detalhe2Page(),
        // '/detalhe3': (_) => const Detalhe3Page(),
      },
    );
  }
}
