import 'package:mobx/mobx.dart';

class ContadorController {
  final _counter = Observable<int>(0);
  late Action increment;

  ContadorController() {
    increment = Action(_incrementCounter);
  }

  int get counter => _counter.value;

  void _incrementCounter() {
    _counter.value++;
  }
}
