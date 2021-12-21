import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_example/app/categoria/categoria_page.dart';
import 'package:flutter_modular_example/app/categoria/model/categoria_controller.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';
import 'package:flutter_modular_example/app/categoria/model/x.dart';
import 'package:flutter_modular_example/app/produto/produto_module.dart';

class CategoriaModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton(
          (i) => X(),
          export: true,
        ),
        Bind.lazySingleton(
          (i) => PrecoModel(
            x: i(),
          ),
          export: true,
        ),
        Bind.lazySingleton(
          (i) => CategoriaController(
            precoModel: i(),
            //* i() é uma callable class para i.get(), que por sua vez funciona como Modular.get()
          ),
        ),
        // Bind.factory(
        //   (i) => CategoriaController(),
        // ),
        // Bind.singleton(
        //   (i) => CategoriaController(),
        // ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => CategoriaPage(
            categoria: args.data,
          ),
        ),
        ModuleRoute(
          '/produto',
          module: ProdutoModule(),
        ),
      ];
}
