import 'package:dart_app/builders.dart';
import 'package:dart_app/custom_bottombar.dart';
import 'package:dart_app/custom_drawer.dart';
import 'package:dart_app/fab_button.dart';
import 'package:dart_app/grid_view.dart';
import 'package:dart_app/img.dart';
import 'package:dart_app/row_widget.dart';
import 'package:dart_app/rowcolumn.dart';
import 'package:dart_app/stlessful.dart';
import 'package:dart_app/text_field_widget.dart';
import 'package:dart_app/text_formField.dart' show TextFormfieldDemo;
import 'package:dart_app/wrap_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Imgs(),
    );
  }
}
