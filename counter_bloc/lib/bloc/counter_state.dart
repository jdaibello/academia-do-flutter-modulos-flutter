part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int counter;

  const CounterState(this.counter);

  @override
  List<Object> get props => [counter];
}

class CounterInitialState extends CounterState {
  const CounterInitialState() : super(0);
}

class CounterStateData extends CounterState {
  const CounterStateData(int counter) : super(counter);
}
