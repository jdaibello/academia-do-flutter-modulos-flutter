import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_imc/observables/modelo_observado/modelo_observado_controller.dart';

class ModeloObservadoPage extends StatefulWidget {
  const ModeloObservadoPage({Key? key}) : super(key: key);

  @override
  _ModeloObservadoPageState createState() => _ModeloObservadoPageState();
}

class _ModeloObservadoPageState extends State<ModeloObservadoPage> {
  final controller = MedeloObservadoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modelo Observado'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(
              builder: (_) {
                debugPrint('----- LISTA -----');
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final product = controller.products[index];
                    return Observer(
                      builder: (_) {
                        debugPrint('----- ITEM INTERNO -----');
                        return CheckboxListTile(
                          value: product.selected,
                          onChanged: (_) {
                            controller.selectedProduct(index);
                          },
                          title: Text(product.product.name),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  controller.addProduct();
                },
                child: const Text('Adicionar'),
              ),
              TextButton(
                onPressed: () {
                  controller.removeProduct();
                },
                child: const Text('Remover'),
              ),
              TextButton(
                onPressed: () {
                  controller.loadProducts();
                },
                child: const Text('Carregar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
