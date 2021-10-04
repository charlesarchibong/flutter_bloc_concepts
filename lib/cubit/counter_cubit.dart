import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit()
      : super(
          const CounterState(
            count: 0,
            wasDecremented: false,
          ),
        );

  void increment() => emit(
        CounterState(
          count: state.count + 1,
          wasDecremented: false,
        ),
      );

  void decrement() => emit(
        CounterState(
          count: state.count - 1,
          wasDecremented: true,
        ),
      );
}
