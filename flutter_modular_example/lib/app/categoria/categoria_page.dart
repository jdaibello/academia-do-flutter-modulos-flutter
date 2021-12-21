import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  const CategoriaPage({this.categoria, Key? key})
      : // categoria = Modular.args.data,
        super(key: key);

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState
    extends ModularState<CategoriaPage, CategoriaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.categoria ?? 'A categoria não foi enviada'),
            TextButton(
              onPressed: () {
                debugPrint('${controller.hashCode}');
              },
              child: const Text('Get controller'),
            ),
          ],
        ),
      ),
    );
  }
}
