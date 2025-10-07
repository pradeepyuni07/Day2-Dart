import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [
               Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: List.generate(4, (index){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                           height: 50,
                         width: 50,
                          color: Colors.red,
                       ),
                     );
                 }),
               ),
               SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children:List.generate(2, (index){
                   return Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                       height: 50,
                       width: 50,
                       color: Colors.red,
                     ),
                   );
                 }),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children:List.generate(2, (index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                  );
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                  );
                }),
              ),
            ]
        ),
    );
  }
}
