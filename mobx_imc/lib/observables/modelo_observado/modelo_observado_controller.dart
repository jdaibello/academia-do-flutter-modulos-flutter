import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';
import 'package:mobx_imc/observables/modelo_observado/model/product_store.dart';

part 'modelo_observado_controller.g.dart';

class MedeloObservadoController = _MedeloObservadoControllerBase
    with _$MedeloObservadoController;

abstract class _MedeloObservadoControllerBase with Store {
  @observable
  // var products = <ProductModel>[];

  var products = <ProductStore>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductStore(
        product: ProductModel(name: 'Computador'),
        selected: false,
      ),
      ProductStore(
        product: ProductModel(name: 'Celular'),
        selected: false,
      ),
      ProductStore(
        product: ProductModel(name: 'Teclado'),
        selected: false,
      ),
      ProductStore(
        product: ProductModel(name: 'Mouse'),
        selected: false,
      ),
    ];
    products.addAll(productsData);
  }

  @action
  void addProduct() {
    products.add(
      ProductStore(
        product: ProductModel(name: 'Computador 2'),
        selected: false,
      ),
    );
  }

  @action
  void removeProduct() {
    products.removeAt(0);
  }

  @action
  void selectedProduct(int index) {
    var productSelected = products[index].selected;
    products[index].selected = !productSelected;
  }
}
