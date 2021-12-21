import 'package:flutter/material.dart';

class ProdutoPage extends StatelessWidget {
  final String? nome;

  const ProdutoPage({this.nome, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Column(
        children: [
          Text(nome ?? 'Nome não enviado'),
        ],
      ),
    );
  }
}
