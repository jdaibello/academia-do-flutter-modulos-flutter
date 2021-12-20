import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/full_name.dart';

part 'contador_codegen_controller.g.dart';

class ContadorCodegenController = _ContadorCodegenControllerBase
    with _$ContadorCodegenController;

abstract class _ContadorCodegenControllerBase with Store {
  @observable
  var counter = 0;

  @observable
  var fullName = FullName(first: 'first', last: 'last');

  @computed
  String get saudacao => 'Olá ${fullName.first} $counter';

  @action
  void increment() {
    counter++;
  }

  @action
  void changeName() {
    fullName = fullName.copyWith(first: 'João', last: 'Pedro');
  }

  @action
  void rollbackName() {
    fullName = fullName.copyWith(first: 'first', last: 'last');
  }
}
