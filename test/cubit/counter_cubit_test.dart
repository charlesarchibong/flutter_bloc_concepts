import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_concepts/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'CounterCubit',
    () {
      late CounterCubit counterCubit;

      setUp(() {
        counterCubit = CounterCubit();
      });

      tearDown(() {
        counterCubit.close();
      });

      test(
        'should start with a count of 0',
        () {
          expect(counterCubit.state.count, 0);
        },
      );

      blocTest(
        'should emit CounterState(count: 1, wasDecremented: false,) when increment event is injected',
        build: () => counterCubit,
        act: (CounterCubit cubit) => cubit.increment(),
        expect: () => [const CounterState(count: 1, wasDecremented: false)],
      );

      blocTest(
        'should emit CounterState(count: -1, wasDecremented: true,) when decrement event is injected',
        build: () => counterCubit,
        act: (CounterCubit cubit) => cubit.decrement(),
        expect: () => [const CounterState(count: -1, wasDecremented: true)],
      );
    },
  );
}
