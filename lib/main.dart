import 'package:dart_app/anim_demo.dart';
import 'package:dart_app/builders.dart';
import 'package:dart_app/click_event.dart';
import 'package:dart_app/custom_bottombar.dart';
import 'package:dart_app/custom_date_picker.dart';
import 'package:dart_app/custom_drawer.dart';
import 'package:dart_app/custom_listtile.dart';
import 'package:dart_app/custom_timepicker.dart';
import 'package:dart_app/explicit_anim.dart';
import 'package:dart_app/fab_button.dart';
import 'package:dart_app/grid_view.dart';
import 'package:dart_app/img.dart';
import 'package:dart_app/img_picker.dart';
import 'package:dart_app/page_view_demo.dart';
import 'package:dart_app/pnt.dart';
import 'package:dart_app/popupmenu_widget.dart';
import 'package:dart_app/row_widget.dart';
import 'package:dart_app/rowcolumn.dart';
import 'package:dart_app/scroll_date_time_picker.dart';
import 'package:dart_app/slide_widget.dart';
import 'package:dart_app/stepper_widget.dart';
import 'package:dart_app/stlessful.dart';
import 'package:dart_app/streambuilder_demo.dart';
import 'package:dart_app/switch_widget.dart';
import 'package:dart_app/text_field_widget.dart';
import 'package:dart_app/text_formField.dart' show TextFormfieldDemo;
import 'package:dart_app/toast_demo.dart';
import 'package:dart_app/wrap_widget.dart';
import 'package:flutter/material.dart';

import 'btn.dart' show Btn;
import 'feedback.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home:StreambuilderDemo()

    );
  }
}
