import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/cubit/counter_cubit.dart';
import 'package:flutter_bloc_example/cubit/counter_cubit_state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: BlocBuilder<CounterCubit, CounterCubitState>(
            builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (state is CounterCubitUpdated)
                    ? Text(
                        state.counter.toString(),
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      )
                    : Text(
                        '0',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.red,
                      onPressed: () {
                        context.read<CounterCubit>().counterDeccrease();
                      },
                      child: Icon(Icons.remove),
                    ),
                    FloatingActionButton(
                        backgroundColor: Colors.green,
                        onPressed: () {
                          context.read<CounterCubit>().counterIncrease();
                        },
                        child: Icon(Icons.add)),
                  ],
                )
              ],
            ),
          );
        }));
  }
}
