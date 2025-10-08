import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row & Column Demo")),
      body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,

          child: Container(

              color: Colors.blue,
              height: 100,
            child: Row(
                mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    Text("data"),

                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Text("data"),

                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                ),
                Row(
                  spacing: 10,
                  children: [
                    Text("data"),

                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                ),
                  Row(
                      spacing: 10,
                    children: [
                      Text("data"),

                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                SizedBox(height: 20,),
                Row(
                  spacing: 10,
                  children: [
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  spacing: 10,
                  children: [
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  spacing: 10,
                  children: [
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                    Text("data"),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                )
              ]
              ),
            ),
          ),


    );
  }
}
