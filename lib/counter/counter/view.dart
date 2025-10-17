import 'package:dart_app/counter/counter/bloc.dart';
import 'package:dart_app/counter/counter/event.dart';
import 'package:dart_app/counter/counter/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Center(
             child: BlocBuilder<CounterBloc,CounterState>(

                 builder: (context,state){
                      return Text("${state.counter}");
                 },
             ),
           ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterBloc>(context).add(Increment()),
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => BlocProvider.of<CounterBloc>(context).add(Decrement()),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
