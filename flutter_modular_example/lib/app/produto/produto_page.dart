import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class ProdutoPage extends StatelessWidget {
  final String? nome;

  const ProdutoPage({this.nome, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nome ?? 'Nome não enviado'),
            TextButton(
              onPressed: () {
                var preco = Modular.get<PrecoModel>();
                debugPrint('${preco.hashCode}');
              },
              child: const Text('Get Preço'),
            ),
          ],
        ),
      ),
    );
  }
}
