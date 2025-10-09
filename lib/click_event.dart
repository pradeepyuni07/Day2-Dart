import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClickEvent extends StatelessWidget {
  const ClickEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              radius: 50,
              // customBorder: BeveledRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.elliptical(12, 10))),
              hoverColor: Colors.greenAccent,
              splashColor: Colors.blueGrey,
              // radius: 10,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                // color: Colors.yellow,
                child: Text("InkWell with OnTap() "),
              ),
            ),
            SizedBox(height: 30),

            InkWell(
              onDoubleTap: () {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("This is double Tap()")));
              },

              // hoverColor: Colors.yellow,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                color: Colors.yellow,

                child: Text("InkWell With onDoubleTap()"),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("This is onLongPress()")),
                );
              },

              // hoverColor: Colors.yellow,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                color: Colors.cyan,

                child: Text("InkWell With onLongPress()"),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTapDown: (TapDownDetails details) {
                print("Pressed at: ${details.globalPosition}");
              },
              onTapUp: (details) {
                print("Pressed at: ${details.globalPosition}");
              },
              onTapCancel: () {
                print("onTapCancle");
              },

              // hoverColor: Colors.yellow,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                color: Colors.brown,

                child: Text("InkWell With onTapDown()"),
              ),
            ),
            SizedBox(height: 30),
            InkWell(
              onTapCancel: () {
                print("onTapCancle");
              },

              // hoverColor: Colors.yellow,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                color: Colors.brown,

                child: Text("InkWell With onTapCancle()"),
              ),
            ),

            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("GestureDetector onTap() Called")),
                );
              },
              // hoverColor: Colors.yellow,
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 300,
                color: Colors.deepOrange,

                child: Text("GestureDetector With onTap()"),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
               onLongPress: (){
                 ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text("GestureDetector onLong Press() Called")),
                 );
               },
              // hoverColor: Colors.yellow,
              child: Container(

                alignment: Alignment.center,
                height: 50,
                width: 300,
                color: Colors.pink,

                child: Text("GestureDetector With onLongPress()"),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onDoubleTap: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("GestureDetector onDoubleTap() Called")),
                );
              },
              // hoverColor: Colors.yellow,
              child: Container(

                alignment: Alignment.center,
                height: 50,
                width: 300,
                color: Colors.limeAccent,

                child: Text("GestureDetector With onDoubleTap()"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
