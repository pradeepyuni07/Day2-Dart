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
      // Bottom area for docking FAB
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 300.0,
          color: Colors.pinkAccent,
          alignment: Alignment.center,
          child: Text(
            "Count: $count",
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),

      // FAB Animation
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

      // FAB Position
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: Container(
        width: 200,
        height: 100,
        color: Colors.blue, // Background color
        alignment: Alignment.center,
        child: const Text(
          "Hello Container",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        // ✅ Extended FAB
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       count++;
        //     });
        //   },
        //   // label: const Text("Add"), // ✅ use label (not child)
        //   // icon: const Icon(Icons.add), // optional icon
        //   // 🎨 Styling
        //   backgroundColor: Colors.green,
        //   foregroundColor: Colors.white,
        //   elevation: 3,
        //   focusColor: Colors.yellow,
        //   hoverColor: Colors.pink,
        //   hoverElevation: 10,
        //   splashColor: Colors.red,
        //   highlightElevation: 7,
        //   tooltip: "Click to increase count",
        //   enableFeedback: true,
        //   autofocus: true,
        //   shape: const RoundedRectangleBorder(
        //     borderRadius: BorderRadius.all(Radius.circular(50)),
        //   ),

        // ),
      ),
    );
  }
}
