import 'package:flutter/material.dart';

class GridViewRev extends StatefulWidget {
  const GridViewRev({super.key});

  @override
  State<GridViewRev> createState() => _GridViewRevState();
}

class _GridViewRevState extends State<GridViewRev> {
  final ScrollController _controller = ScrollController();

  // Scroll to Top
  void scrollToTop() {
    _controller.animateTo(
      0.0,
      duration: const Duration(seconds: 2),
      curve: Curves.linearToEaseOut,
    );
  }

  // Scroll to Bottom
  void scrollToBottom() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(seconds: 2),
      curve: Curves.bounceOut,
    );
  }


  @override
  void dispose() {
    _controller.dispose(); // ✅ Important: clean up
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: const Text("GridView Example"),
      ),

      body: GridView.builder(
        controller: _controller, // ✅ Attach controller
        padding: const EdgeInsets.all(8),
        itemCount: 51,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100, // max width per grid item
          mainAxisExtent: 150,     // fixed height per item
          crossAxisSpacing: 8,     // horizontal gap
          mainAxisSpacing: 8,      // vertical gap
        ),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: (){
                  setState(() {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${index}")));
                  });
              },
            child: Container(
              decoration: BoxDecoration(
                color: index % 2 == 0 ? Colors.blue : Colors.green,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  width: 2,
                  color: index % 2 == 0 ? Colors.black : Colors.pink,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                "$index",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
      ),

      // ✅ Floating Buttons for Scroll Animation
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'up',
            onPressed: scrollToTop,
            child: const Icon(Icons.arrow_upward),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'down',
            onPressed: scrollToBottom,
            child: const Icon(Icons.arrow_downward),
          ),
        ],
      ),
    );
  }
}
