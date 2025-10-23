import 'package:dart_app/blocproperty/bloc.dart';
import 'package:dart_app/blocproperty/event.dart';
import 'package:dart_app/blocproperty/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ColorBloc, ColorState>(
              buildWhen: (previous, current) => current.count % 2 == 0,
              builder: (context, state) {
                return Text("${state.count}");
              },
            ),
            BlocListener<ColorBloc, ColorState>(
              listenWhen: (previous, current) => current.count % 2 == 0,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Even count: ${state.count}')),
                );
              },
              child: Container(),
            ),

            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                context.read<ColorBloc>().add(ActiveColorEvent());
              },
              child: Text("click event"),
            ),
          ],
        ),
      ),
    );
  }
}
