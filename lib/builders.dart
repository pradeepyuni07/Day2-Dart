import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Builders extends StatefulWidget {
  const Builders({super.key});

  @override
  State<Builders> createState() => _BuildersState();
}

class _BuildersState extends State<Builders> {
  final ScrollController _controller = ScrollController();

  // void _scrollDown1() {
  //   _controller.jumpTo(_controller.position.maxScrollExtent);
  // }

  void _scrollDown2() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(seconds: 3),
      curve: Curves.bounceOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(

        // onDoubleTap: _scrollDown2,
        child: ListView.builder(
           dragStartBehavior: DragStartBehavior.start,
          controller: _controller,
          itemCount: 50, // total items
          itemBuilder: (context, index) {
            // Sponsored Ad every 5 items (except 0)
            if (index != 0 && index % 5 == 0) {
              return Container(
                color: Colors.yellow,
                padding: const EdgeInsets.all(16),
                child: Text(
                  "Sponsored Ad $index",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            }

            // Normal list item
            return ListTile(
              leading: CircleAvatar(child: Text("$index")),
              title: Text("User $index"),
            );
          },
        ),
      ),
    );
  }
}
