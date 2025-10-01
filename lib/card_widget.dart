import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const CardWidget());
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 100,
          child: Card(
            surfaceTintColor: Colors.greenAccent,
            clipBehavior: Clip.hardEdge,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            color: Colors.green,
            elevation: 7,
            shadowColor: Colors.blue,
            child: Center(child: Text("This is card Widget fvvvvvvvvvvvvvvvdfjsjafjsfjsahhfyewryewvcbmbcdhiaiwhdhqwidweifwefbwefhwhbjhjefjjhefhjefjhefhjefhjhejhjfebjefjjefjbhhbefjhbef",textAlign: TextAlign.center,)) ,
          ),
        ),
      ),
    );
  }
}

