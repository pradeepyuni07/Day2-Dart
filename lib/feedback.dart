import 'package:flutter/material.dart';

class FeedbackDemo extends StatefulWidget {
  const FeedbackDemo({super.key});

  @override
  State<FeedbackDemo> createState() => _FeedbackDemoState();
}

class _FeedbackDemoState extends State<FeedbackDemo> {
  bool isVisible = false;
  List<int> items = List.generate(20, (index) => index);
  Future<void> _refreshData() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      items = List.generate(items.length + 5, (index) => index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Feedback Widgets Demo")),
      body: Column(
        children: [
          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text("I am SnackBar 😎"),
                  elevation: 10,
                  behavior: SnackBarBehavior.floating,
                  dismissDirection: DismissDirection.horizontal,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  showCloseIcon: true,
                  closeIconColor: Colors.red,
                  backgroundColor: const Color(0xFFB2EBF2).withOpacity(0.8),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  action: SnackBarAction(
                    label: "UNDO",
                    textColor: Colors.deepPurple,
                    onPressed: () {
                      print("Undo tapped");
                    },
                  ),
                ),
              );
            },
            child: const Text("Show SnackBar"),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: Text(isVisible ? "Hide Blue Box" : "Show Blue Box"),
          ),

          const SizedBox(height: 20),

          Visibility(
            visible: isVisible,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Container(
              height: 100,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Blue Box",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // ElevatedButton(
          //   onPressed: () {
          //     showDialog(
          //       barrierDismissible: true,
          //       context: context,
          //       builder: (context) {
          //         return AlertDialog(
          //           icon: Icon(Icons.person_2_outlined),
          //           iconColor: Colors.greenAccent,
          //           // iconPadding: EdgeInsetsGeometry.all(50),
          //           scrollable: true,
          //           elevation: 10,
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.all(Radius.circular(50)),
          //           ),
          //           shadowColor: Colors.red,
          //           backgroundColor: Colors.brown,
          //           title: Text("This is Title"),
          //           content: Text("This is the content of AlterDialog"),
          //           contentTextStyle: TextStyle(
          //             fontSize: 24,
          //             color: Colors.greenAccent,
          //             fontWeight: FontWeight.bold,
          //           ),
          //           // titlePadding: EdgeInsets.all(50),
          //           titleTextStyle: TextStyle(
          //             fontSize: 20,
          //             color: Colors.deepOrange,
          //           ),
          //           actionsAlignment: MainAxisAlignment.spaceBetween,
          //           actionsOverflowAlignment: OverflowBarAlignment.end,
          //           actions: [
          //             Icon(Icons.close),
          //             Icon(Icons.close),
          //             Icon(Icons.close),
          //             Icon(Icons.close),
          //             Icon(Icons.close),
          //             Icon(Icons.close),
          //           ],
          //         );
          //       },
          //     );
          //   },
          //   child: Text("Dailog"),
          // ),
          // Expanded(
          //   child: RefreshIndicator(
          //
          //     onRefresh: _refreshData,
          //     color: Colors.red,
          //     backgroundColor: Colors.blue,
          //     child: ListView.builder(
          //       physics: const AlwaysScrollableScrollPhysics(),
          //       itemCount: items.length,
          //       itemBuilder: (context, index) => ListTile(
          //         title: Text("Item ${items[index]}"),
          //       ),
          //     ),
          //   ),
          // ),

          // ElevatedButton(onPressed: (){
          //   showDialog(context: context, builder: (context){
          //     return  SimpleDialog(
          //           title: Text("i am Title"),
          //             backgroundColor: Colors.deepOrange,
          //           elevation: 10,
          //           shadowColor: Colors.black,
          //           shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 80))),
          //           children: [
          //             SimpleDialogOption(
          //               onPressed: () => Navigator.pop(context, "Light"),
          //               child: Text("Light Theme"),
          //             ),
          //             SimpleDialogOption(
          //               onPressed: () => Navigator.pop(context, "Dark"),
          //               child: Text("Dark Theme"),
          //             ),
          //             SimpleDialogOption(
          //               onPressed: () => Navigator.pop(context, "System"),
          //               child: Text("System Default"),
          //             ),
          //
          //           ],
          //     );
          //   });
          // }, child: Text("click me"))
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                useSafeArea: true,
                enableDrag: true,
                showDragHandle: true,
                isDismissible: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 50)),
                ),
                elevation: 8,
                backgroundColor: Colors.blueGrey,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "Pradeep",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.close),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text("Click me"),
          ),
        ],
      ),
    );
  }
}
