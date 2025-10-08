import 'package:flutter/material.dart';

class Stlessful extends StatefulWidget {
  Stlessful({super.key});

  @override
  State<Stlessful> createState() => _StlessfulState();
}

class _StlessfulState extends State<Stlessful> {
  @override
  void initState() {
    super.initState();
    debugPrint("initState() called");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("didChangeDependencies() called.");
  }

  @override
  void didUpdateWidget(covariant Stlessful oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("didUpdateWidget() called.");
  }

  void onClick() {
    debugPrint("setState called()");
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint("deactivate() called.");
  }

  @override
  void dispose() {
    debugPrint("dispose() called.");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build() called");
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Lifecycle Demo")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              onClick();
            });
          },
          child: Text("Call setState()"),
        ),
      ),
    );
  }
}
