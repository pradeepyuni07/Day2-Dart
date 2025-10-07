import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FabButton extends StatefulWidget {
  const FabButton({super.key});

  @override
  State<FabButton> createState() => _FabButtonState();
}

class _FabButtonState extends State<FabButton> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 300.0, color: Colors.pinkAccent),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Text("add"),
        elevation: 3,
        focusColor: Colors.yellow,
        splashColor: Colors.red,
        tooltip: "tool Tip",
        highlightElevation: 7,
        autofocus: true,
        hoverColor: Colors.pink,
        hoverElevation: 10,
        enableFeedback: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
    );
  }
}
