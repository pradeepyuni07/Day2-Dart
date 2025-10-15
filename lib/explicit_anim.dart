import 'package:flutter/material.dart';

class ExplicitAnim extends StatefulWidget {
  const ExplicitAnim({super.key});

  @override
  State<ExplicitAnim> createState() => _ExplicitAnimState();
}

class _ExplicitAnimState extends State<ExplicitAnim>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);

    controller.repeat(reverse: true);   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(height: 200, width: 200, color: Colors.blue),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
