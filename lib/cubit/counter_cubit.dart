import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/cubit/counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  int counter = 0;

  CounterCubit() : super(CounterInitState());

  void counterIncrease() {
    counter++;
    emit(CounterCubitUpdated(counter: counter));
  }


    void counterDeccrease() {
    counter--;
    emit(CounterCubitUpdated(counter: counter));
  }
}
