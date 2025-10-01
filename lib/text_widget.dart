import 'package:flutter/material.dart';

void main() {
  runApp(const TextWidget());
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          // semanticsLabel: "Greeting in Hindi and English",
          // textWidthBasis: TextWidthBasis.parent,
            // textAlign: TextAlign.center,
            //  textDirection: TextDirection.ltr,
            softWrap: true,
             // textScaleFactor: 1.5,
          overflow: TextOverflow.ellipsis,
           // locale: Locale("hi","IN"),
          // maxLines: 1,
            key: ValueKey("pradeep"),
          "नमस्ते To flutter",
          style: TextStyle(
             inherit: true,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 25,
            letterSpacing: 0.9,
            wordSpacing: 0.5,
              decoration: TextDecoration.lineThrough,
                 decorationColor: Colors.red,
               decorationStyle: TextDecorationStyle.dotted,
                 // locale: Locale("hi","IN"),
              // background: Paint()..color=Colors.red
            foreground: Paint()
              ..shader = LinearGradient(
                colors: [Colors.pink, Colors.blue],
              ).createShader(Rect.fromLTWH(0, 0, 200, 70)),
            // shadows: [
            //   Shadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4),
            // ],
          ),

        ),
      ),
    );
  }
}
