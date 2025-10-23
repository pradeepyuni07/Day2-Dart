import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'event.dart';
import 'state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ActiveColorState(color: Colors.blue, count: 0)) {
    on<ActiveColorEvent>((event, emit) {
      final random = Random();
      final newColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );

      final currentState = state as ActiveColorState;

      emit(currentState.copyWith(
        color: newColor,
        count: currentState.count + 1,
      ));
    });
  }
}
