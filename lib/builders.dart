import 'package:flutter/material.dart';

class Builders extends StatefulWidget {
  const Builders({super.key});

  @override
  State<Builders> createState() => _BuildersState();
}

class _BuildersState extends State<Builders> {
  final ScrollController _controller = ScrollController();

  void _scrollDown1() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  void _scrollDown2() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: Duration(seconds: 3),
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
        onTap: _scrollDown1,
        onDoubleTap: _scrollDown2,
        child: ListView.custom(
          controller: _controller,
          shrinkWrap: true,
          childrenDelegate: SliverChildBuilderDelegate(
                (context, index) {
              if (index % 5 == 0 && index != 0) {
                return Container(
                  color: Colors.yellow,
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Sponsored Ad $index",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              }
              // Normal list item
              return ListTile(
                leading: CircleAvatar(child: Text("$index")),
                title: Text("User $index"),
              );
            },
            childCount: 50, // total items
          ),
        ),
      ),
    );
  }
}
