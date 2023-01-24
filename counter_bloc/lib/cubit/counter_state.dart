part of 'counter_cubit.dart';

abstract class CounterState {
  final int counter;

  const CounterState(this.counter);
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(0);
}

class CounterStateData extends CounterState {
  CounterStateData(int counter) : super(counter);
}
