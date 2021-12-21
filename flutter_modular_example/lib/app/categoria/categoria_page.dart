import 'package:flutter/material.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  const CategoriaPage({this.categoria, Key? key})
      : // categoria = Modular.args.data,
        super(key: key);

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Text(widget.categoria ?? 'A categoria não foi enviada'),
      ),
    );
  }
}
