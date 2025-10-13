import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastDemo extends StatefulWidget {
  const ToastDemo({super.key});

  @override
  State<ToastDemo> createState() => _ToastDemoState();
}

class _ToastDemoState extends State<ToastDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: "I am a Toast",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0,
              webPosition: "center",
               webShowClose: true,
              webBgColor: "linear-gradient(to right, #00ff00, #00000038)",
            );
          },
          child: Text("Show Toast"),
        ),
      ),
    );
  }
}
