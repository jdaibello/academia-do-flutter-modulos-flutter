import 'package:flutter/material.dart';

class Produto2Page extends StatelessWidget {
  final String? nome;

  const Produto2Page({this.nome, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto 2'),
      ),
      body: Column(
        children: [
          Text(nome ?? 'Nome não enviado'),
        ],
      ),
    );
  }
}
