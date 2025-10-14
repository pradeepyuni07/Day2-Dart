import 'package:flutter/material.dart';

class CustomTimepicker extends StatefulWidget {
  const CustomTimepicker({super.key});

  @override
  State<CustomTimepicker> createState() => _CustomTimepickerState();
}

class _CustomTimepickerState extends State<CustomTimepicker> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom TimePicker")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  cancelText: "Cancel",
                  confirmText: "OK",
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        timePickerTheme: TimePickerThemeData(
                          backgroundColor: Colors.white,
                            dayPeriodColor:Colors.yellowAccent ,
                          dayPeriodShape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.elliptical(10,30)),
                          ),
                           // dayPeriodTextColor: Colors.red,
                            dialBackgroundColor: Colors.redAccent,
                          dialHandColor: Colors.greenAccent,
                           dialTextColor: Colors.white,
                            elevation: 7,
                          entryModeIconColor: Colors.black,
                            hourMinuteTextColor: Colors.white,
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                           hourMinuteColor: Colors.redAccent,
                          hourMinuteShape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.all(Radius.elliptical(30, 50))
                          ),

                          // dayPeriodTextColor: Colors.white,
                          // dayPeriodBorderSide:BorderSide(width: 2,color: Colors.black) ,
                          cancelButtonStyle: ButtonStyle(
                            textStyle: MaterialStateProperty.all(
                              const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          confirmButtonStyle: ButtonStyle(
                            textStyle: MaterialStateProperty.all(
                              const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      child: child!,
                    );
                  },
                );

                // ✅ Update UI with selected time
                if (time != null) {
                  setState(() {
                    selectedTime = time;
                  });
                }
              },
              child: const Text("Select Time"),
            ),
            const SizedBox(height: 20),
            Text(
              selectedTime != null
                  ? "Selected Time: ${selectedTime!.format(context)}"
                  : "No time selected",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
