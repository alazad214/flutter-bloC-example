import 'package:equatable/equatable.dart';

abstract class CounterCubitState extends Equatable {
  const CounterCubitState();
}

class CounterInitState extends CounterCubitState {
  @override
  List<Object?> get props => [];
}

class CounterCubitUpdated extends CounterCubitState {
  final int counter;
  const CounterCubitUpdated({required this.counter});

  @override
  List<Object?> get props => [counter];
}
