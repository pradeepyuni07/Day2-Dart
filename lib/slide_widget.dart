import 'package:flutter/material.dart';

class SlideWidget extends StatefulWidget {
  const SlideWidget({super.key});

  @override
  State<SlideWidget> createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget> {
  double curr_value=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Container(
                   height: 100,
                    width: 100,
                   color:   Color.fromRGBO(0, curr_value.toInt(),curr_value.toInt(), 1)
                 ),
                SizedBox(height: 50,),
              Slider(
                // padding: EdgeInsets.all(10),
                allowedInteraction: SliderInteraction.slideOnly,
                  onChangeStart: (value){
                       print(value);
                  },
                activeColor: Colors.green,
                  // divisions: 10,
                   thumbColor: Colors.red,
                  inactiveColor: Colors.grey,
                  label: curr_value.toStringAsFixed(0),
                  value: curr_value,
                  min: 0,
                  max: 100,
                  onChanged: (value){
                     setState(() {
                       curr_value=value;
                     });
              }),
            ],
          ),
        ),
    );
  }
}
