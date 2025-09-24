import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First Flutter App"),
        ),
        body: const Center(
          child: Text(
            "Hello Flutter!",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
