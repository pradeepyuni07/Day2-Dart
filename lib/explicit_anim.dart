import 'package:flutter/material.dart';

class ExplicitAnim extends StatefulWidget {
  const ExplicitAnim({super.key});

  @override
  State<ExplicitAnim> createState() => _ExplicitAnimState();
}

class _ExplicitAnimState extends State<ExplicitAnim>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );

    scaleAnimation = Tween<double>(begin: 0.5, end: 1.5).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );

    controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: controller.value * 2 * 3.1416,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(height: 300, width: 300, color: Colors.blue),
                  Transform.scale(
                    scale: scaleAnimation.value,
                    child: Container(height: 150, width: 150, color: Colors.red),
                  ),
                ],
              ),
            );
          },
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
