import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/product_model.dart';

part 'observable_list_controller.g.dart';

class ObservableListController = _ObservableListControllerBase
    with _$ObservableListController;

abstract class _ObservableListControllerBase with Store {
  @observable
  // var products = <ProductModel>[];

  var products = <ProductModel>[].asObservable();

  @action
  void loadProducts() {
    var productsData = [
      ProductModel(name: 'Computador'),
      ProductModel(name: 'Celular'),
      ProductModel(name: 'Teclado'),
      ProductModel(name: 'Mouse'),
    ];
    products.addAll(productsData);
  }

  @action
  void addProduct() {
    products.add(
      ProductModel(name: 'Computador 2'),
    );
  }

  @action
  void removeProduct() {
    products.removeAt(0);
  }
}
