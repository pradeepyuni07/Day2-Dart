import 'dart:math' show Random;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wrapres extends StatefulWidget {
  const Wrapres({super.key});

  @override
  State<Wrapres> createState() => _WrapresState();
}

class _WrapresState extends State<Wrapres> {
  Color getRandomColor() {
    Random random = Random();
    int randomColor = random.nextInt(0xFFFFFF + 1);
    return Color(0xFF000000 + randomColor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,

          // runAlignment: WrapAlignment.spaceAround,
          crossAxisAlignment: WrapCrossAlignment.center,

          spacing: 10,
          runSpacing: 12,
          children: List.generate(11, (index) {
            return Container(height: 70, width: 80, color: getRandomColor(),);
          }),
        ),
      ),
    );
  }
}
