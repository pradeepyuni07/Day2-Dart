import 'dart:developer';
import 'package:intl/intl.dart';

import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final pickDate = await showDatePicker(
                  // textDirection: TextDirection.rtl,
                  initialDatePickerMode: DatePickerMode.day,
                  initialEntryMode: DatePickerEntryMode.calendarOnly,

                  cancelText: "Cancel Me",
                  confirmText: "Ok Done",
                  context: context,
                  barrierDismissible: false,
                  barrierColor: Colors.transparent,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2030),
                  errorFormatText: "Please Enter Valid date",
                  fieldHintText: "DD/MM/YY",
                  fieldLabelText: "Date",
                  keyboardType: TextInputType.datetime,
                  onDatePickerModeChange: (mode) {
                    log(
                      "DatePicker mode changed to: $mode",
                      name: "DatePickerDemo",
                    );
                  },
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        datePickerTheme: DatePickerThemeData(
                          dayShape:
                              MaterialStateProperty.resolveWith<OutlinedBorder>(
                                (states) {
                                  return RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ), // use RoundedRectangleBorder
                                  );
                                },
                              ),

                          subHeaderForegroundColor: Colors.black,
                          // backgroundColor: Colors.green
                          cancelButtonStyle: ButtonStyle(
                            textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 20),
                            ),
                            foregroundColor: MaterialStateProperty.all(
                              Colors.red,
                            ),
                          ),
                          confirmButtonStyle: ButtonStyle(
                            textStyle: MaterialStateProperty.all(
                              TextStyle(fontSize: 20),
                            ),
                            foregroundColor: MaterialStateProperty.all(
                              Colors.green,
                            ),
                          ),
                          elevation: 7,
                          shadowColor: Colors.blueGrey,
                          headerForegroundColor: Colors.white,
                          headerBackgroundColor: Colors.blue,
                          todayBackgroundColor:
                              MaterialStateProperty.resolveWith<Color?>((
                                states,
                              ) {
                                return Colors.green; // default today background
                              }),
                          todayForegroundColor:
                              MaterialStateProperty.resolveWith<Color?>((
                                states,
                              ) {
                                return Colors.white;
                              }),
                          dayForegroundColor:
                              MaterialStateProperty.resolveWith<Color?>((
                                states,
                              ) {
                                return Colors.white;
                              }),
                          dayBackgroundColor:
                              MaterialStateProperty.resolveWith<Color?>((
                                states,
                              ) {
                                if (states.contains(MaterialState.selected)) {
                                  return Colors.deepOrange; // selected day
                                } else if (states.contains(
                                  MaterialState.disabled,
                                )) {
                                  return Colors.grey.shade300; // disabled day
                                }
                                return Colors.blue; // default
                              }),

                          // todayBorder: BorderSide(
                          //   width: 2,
                          //   color: Colors.redAccent,
                          // ),
                          dayStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          weekdayStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          yearStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          yearForegroundColor:
                              MaterialStateProperty.resolveWith((states) {
                                return Colors.black;
                              }),
                          yearBackgroundColor:
                              MaterialStateProperty.resolveWith<Color?>((
                                states,
                              ) {
                                if (states.contains(MaterialState.selected)) {
                                  return Colors.deepOrange;
                                }
                                return Colors.white;
                              }),
                        ),
                      ),
                      child: child!,
                    );
                  },
                  calendarDelegate: GregorianCalendarDelegate(),
                  switchToInputEntryModeIcon: Icon(Icons.edit_calendar),
                  switchToCalendarEntryModeIcon: Icon(
                    Icons.calendar_month_outlined,
                  ),
                );

                if (pickDate != null) {
                  setState(() {
                    selectedDate = pickDate;
                  });
                }
              },

               child: Text("Select Date"),
             ),

            SizedBox(height: 30),
            Text("${DateFormat('dd/MM/yyyy').format(selectedDate)}"),
          ],
        ),
      ),
    );
  }
}
