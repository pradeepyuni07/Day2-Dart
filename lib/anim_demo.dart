import 'package:flutter/material.dart';

class AnimDemo extends StatefulWidget {
  const AnimDemo({super.key});

  @override
  State<AnimDemo> createState() => _AnimDemoState();
}

class _AnimDemoState extends State<AnimDemo> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example 1: AnimatedContainer
            // InkWell(
            //   onTap: () {
            //     setState(() {
            //       isClick = !isClick;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     duration: Duration(milliseconds: 800),
            //     curve: Curves.linear,
            //     color: isClick ? Colors.green : Colors.red,
            //     height: isClick ? 100 : 200,
            //     width: isClick ? 100 : 200,
            //   ),
            // ),

            // Example 2: AnimatedCrossFade
            // InkWell(
            //   onTap: () {
            //     setState(() {
            //       isClick = !isClick;
            //     });
            //   },
            //   child: AnimatedCrossFade(
            //     firstChild:
            //         Container(height: 200, width: 200, color: Colors.red),
            //     secondChild:
            //         Container(height: 300, width: 300, color: Colors.green),
            //     crossFadeState: isClick
            //         ? CrossFadeState.showSecond
            //         : CrossFadeState.showFirst,
            //     duration: Duration(milliseconds: 1000),
            //     firstCurve: Curves.easeOut,
            //     secondCurve: Curves.easeIn,
            //     reverseDuration: Duration(milliseconds: 800),
            //   ),
            // ),

            // Example 3: AnimatedOpacity
            // InkWell(
            //   onTap: () {
            //     setState(() {
            //       isClick = !isClick;
            //     });
            //   },
            //   child: AnimatedOpacity(
            //     opacity: isClick ? 0 : 1,
            //     duration: Duration(milliseconds: 800),
            //     curve: Curves.linear,
            //     child: Container(
            //       width: 200,
            //       height: 200,
            //       color: Colors.tealAccent,
            //     ),
            //   ),
            // ),

            // InkWell(
            //   onTap: () {
            //     setState(() {
            //       isClick = !isClick;
            //     });
            //   },
            //   child: Container(
            //     width: 600,
            //     height: 600,
            //     color: Colors.grey.shade300,
            //     child: AnimatedAlign(
            //       alignment:
            //       isClick ? Alignment.topRight : Alignment.center,
            //       duration: Duration(milliseconds: 500),
            //       curve: Curves.easeInOut,
            //       child: Container(
            //         width:100,
            //         height: 100,
            //         color: Colors.tealAccent,
            //
            //       ),
            //     ),
            //   ),
            // ),
            // InkWell(
            //   onTap: (){
            //     setState(() {
            //        isClick=!isClick;
            //     });
            //   },
            //   child: AnimatedRotation(
            //     curve: Curves.easeInOut,
            //      turns: isClick?600:0,
            //     duration: Duration(minutes: 2),
            //      child: Container(
            //         height: 300,
            //         width: 300,
            //        color: Colors.pink,
            //      ),
            //   ),
            // ),

            // InkWell(
            //   onTap: (){
            //     setState(() {
            //        isClick=!isClick;
            //     });
            //   },
            //   child: AnimatedScale(
            //     curve: Curves.linear,
            //     scale: isClick?2:1,
            //     duration: Duration(milliseconds: 300),
            //      child: Container(
            //         height: 100,
            //         width: 100,
            //        color: Colors.pink,
            //      ),
            //   ),
            // ),
            InkWell(
            onTap: () {
      setState(() {
      isClick = !isClick;
      });
      },
        child: Container(
          width: 300,
          height: 300,
          color: Colors.grey.shade300,
          child: Stack(
            children: [
              AnimatedPositioned(
                curve: Curves.linear,
                left: isClick ? 0 : 0,
                top: isClick ? 400 : 0,
                right: isClick ? 0 : 0,
                bottom: isClick ? 0 : 0,
                duration: Duration(milliseconds: 600),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
              ),
            ],

          ),
        ),
      )
]
    ),
      ),
    );
  }
}
