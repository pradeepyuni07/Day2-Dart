// // counter_bloc.dart
// impackage:bloc/bloc.dart';
// import 'package:bloc/bloc.dart';
// import 'package:dart_app/counter/counter/state.dart';

// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(CounterState(0)) {
//     on<Increment>((event, emit) => emit(CounterState(state.counter + 1)));
//     on<Decrement>((event, emit) => emit(CounterState(state.counter - 1)));
//   }
// }


import 'package:bloc/bloc.dart';
import 'package:dart_app/counter/counter/state.dart';
// import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0));

  void increment() {
    emit(CounterState( state.counter + 1));
  }

  void decrement() {
    emit(CounterState(state.counter - 1));
  }
}

