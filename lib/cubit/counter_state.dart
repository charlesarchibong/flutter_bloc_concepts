part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int count;
  final bool wasDecremented;

  const CounterState({
    required this.count,
    required this.wasDecremented,
  });

  @override
  List<Object?> get props => [count, wasDecremented];
}
