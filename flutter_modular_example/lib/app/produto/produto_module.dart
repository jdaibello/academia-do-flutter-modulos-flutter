import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_module.dart';
import 'package:flutter_modular_example/app/produto/produto_page.dart';

class ProdutoModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<Module> get imports => [
        CategoriaModule(),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/:nome/xyz',
      child: (context, args) => ProdutoPage(
        nome: args.params['nome'] ?? 'Nome não encontrado',
      ),
    ),
    ChildRoute(
      '/xyz',
      child: (context, args) => ProdutoPage(
        nome: args.queryParams['nome'] ?? 'Nome não encontrado',
      ),
    ),
  ];
}
