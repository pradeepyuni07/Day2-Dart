import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollDateTimePicker extends StatefulWidget {
  const ScrollDateTimePicker({super.key});

  @override
  State<ScrollDateTimePicker> createState() => _ScrollDateTimePickerState();
}

class _ScrollDateTimePickerState extends State<ScrollDateTimePicker> {
    Duration duration=Duration(hours: 00,minutes: 00,seconds: 00);
    DateTime dateTime=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
                  ElevatedButton(onPressed: (){
                            showCupertinoModalPopup(context: context, builder:(context){
                            return  Container(
                                height: 250,
                                color: Colors.white,
                                // child: CupertinoTimerPicker(
                                //  minuteInterval: 2,
                                //   // backgroundColor: Colors.red,
                                //   mode: CupertinoTimerPickerMode.hms,
                                //   initialTimerDuration:duration,
                                //   onTimerDurationChanged: (Duration value) {
                                //     setState(() {
                                //       duration = value;
                                //     });
                                //   },

                               child:CupertinoDatePicker(
                                 mode: CupertinoDatePickerMode.dateAndTime,
                                 initialDateTime: dateTime,
                                 minimumDate: DateTime(2000),
                                 maximumDate: DateTime(2100),
                                 showTimeSeparator: true,
                                 minuteInterval: 5,
                                 use24hFormat: true,
                                 onDateTimeChanged: (DateTime newDate) {
                                   print("Selected: $newDate");
                                 },
                               )
                                 );

                            });
                  }, child: Text("select time"))
             ],
         ),
       ),
    );
  }
}
