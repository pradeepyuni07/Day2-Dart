import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerWidget());
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.topLeft,
          height: 100,
          width: 100,
          // constraints: BoxConstraints(
          //   maxHeight: 200,
          //   minHeight: 150,
          //   maxWidth: 200,
          //   minWidth: 100,
          // ),
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(50, 150)),
            // color: Colors.green,
            border: Border.all(
              width: 2,
              color: Colors.red,
              strokeAlign: BorderSide.strokeAlignOutside,
              style: BorderStyle.solid,
            ),
            gradient: RadialGradient(
              colors: [Colors.red, Colors.yellow, Colors.green],

              // focalRadius: 0.2,
              stops: [0.3, 0.5, 1.0],
            ),
          ),
          transform: Matrix4.rotationY(0.5),
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: NetworkImage(
            //     "data:image/png;base64,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",
            //   ),
            //
            //   fit: BoxFit.cover,
            //   // colorFilter: ColorFilter.mode(Colors.green, BlendMode.overlay)
            // ),
            // backgroundBlendMode: BlendMode.darken,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.all(Radius.elliptical(50, 150)),
            // color: Colors.green,
            border: Border.all(
              width: 2,
              color: Colors.red,
              strokeAlign: BorderSide.strokeAlignOutside,
              style: BorderStyle.solid,
            ),
            boxShadow: [
                  // BoxShadow(color: Colors.black, spreadRadius: 30,blurRadius: 20),
              BoxShadow(color: Colors.green,spreadRadius:30,blurRadius: 1,offset: Offset(0, 0)),

              BoxShadow(color: Colors.yellow,spreadRadius:20,blurRadius: 2,offset: Offset(0, 0)),

              BoxShadow(color: Colors.red,spreadRadius: 10,blurRadius: 3,offset: Offset(0, 0)),

            ],
            gradient: LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [Colors.red, Colors.yellow, Colors.green],
              stops: [0.3, 0.5, 1.0],

              // tileMode: TileMode.mirror,
              // transform: GradientRotation(math.pi / 7),
            ),

            // gradient: RadialGradient(colors: [Colors.red, Colors.yellow, Colors.green],
            //   focal: Alignment(-0.5, -0.5),
            //   // focalRadius: 0.2,
            //     radius: 0.5,
            //   center:Alignment.center,
          ),
        ),
      ),
    );
  }
}
