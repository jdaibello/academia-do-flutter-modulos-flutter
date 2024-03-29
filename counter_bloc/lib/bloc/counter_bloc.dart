import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitialState()) {
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }

  void _increment(CounterIncrement event, Emitter<CounterState> emit) {
    emit(CounterStateData(state.counter + 1));
  }

  void _decrement(CounterDecrement event, Emitter<CounterState> emit) {
    emit(CounterStateData(state.counter - 1));
  }
}
