import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/detalhe',
                  arguments: 'Parâmetro X',
                );
                debugPrint('Foi para a tela DetalhePage');
              },
              child: const Text('Ir para Detalhe'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: '/detalhe',
                      // arguments: 'Parâmetro pelo page route',
                    ),
                    builder: (context) => const DetalhePage(
                      parametro: 'Parâmetro pelo Page Route',
                    ),
                  ),
                );
              },
              child: const Text('Ir para Detalhe PageRoute'),
            ),
            TextButton(
              onPressed: () async {
                var message =
                    await Navigator.of(context).pushNamed('/detalhe2');
                debugPrint('Mensagem recebida da página: $message');
              },
              child: const Text('Ir para Detalhe2 e aguardar'),
            ),
            TextButton(
              onPressed: () async {
                debugPrint('Antes de navegar para a página Detalhe 3');

                //* Tipar o tipo de retorno somente quando usar
                //* navegação customizada com onGenerateRoute
                final retorno = await Navigator.of(context).pushNamed<String>(
                  '/detalhe3',
                );
                debugPrint('O retorno de Detalhe 3 é $retorno');
                debugPrint('Navegou para a página Detalhe 3');
              },
              child: const Text('Ir para Detalhe 3'),
            ),
          ],
        ),
      ),
    );
  }
}
