import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: isDark?Colors.black:Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(

              // padding: EdgeInsets.all(150),
              //  autofocus: true,
              // focusColor: Colors.red,
              // thumbColor: WidgetStatePropertyAll(Colors.red),
              // trackOutlineWidth: WidgetStateProperty.resolveWith<double?>((Set<WidgetState> states) {
              //   if (states.contains(WidgetState.selected)) {
              //     return 5.0;
              //   }
              //   return null; // Use the default width.
              // }),
              // trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
              //   if (states.contains(WidgetState.selected)) {
              //     return Colors.orange.withOpacity(.48);
              //   }
              //   return null; // Use the default color.
              // }),
              // thumbIcon: WidgetStatePropertyAll(Icon(Icons.legend_toggle)),
              activeThumbColor: Colors.black,
              activeTrackColor: Colors.white,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.black,
              // splashRadius: 100,
              // activeThumbImage: AssetImage('assets/images/dark.png.png'),
              // inactiveThumbImage: AssetImage('assets/images/light.png.png'),

              value: isDark,
              onChanged: (bool value) {
                setState(() {
                  isDark = value;
                });
              },


            ),
          ],
        ),
      ),
    );
  }
}
