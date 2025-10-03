import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key});
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),

            TextField(
              controller: email_controller,
              keyboardType: TextInputType.emailAddress,
              autofocus: false,
              textInputAction: TextInputAction.newline,
              textCapitalization: TextCapitalization.words,
              // textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.bottom,
              textDirection: TextDirection.ltr,
              enableSuggestions: true,
              // hintLocales: [Locale('en'), Locale('hi')], // English & Spanish

              // keyboardAppearance: Brightness.dark,
              // // readOnly: true,
              //  obscureText: true,
              // obscuringCharacter: "*",
              // maxLength: 10,
              // maxLines: 2,
              // showCursor: false,
              // autocorrect: true,
              // cursorHeight: 350,
              cursorColor: Colors.red,
              cursorOpacityAnimates: true,
              //  cursorWidth: 5,
              // cursorRadius: Radius.elliptical(10, 10),
              cursorErrorColor: Colors.green,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.,
                // hint: Text("data")
                //   label: Text("Email"),
                // icon: Icon(Icons.email),
                hintText: "Enter Your Email",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.grey,
                ),

                hintFadeDuration: Duration(milliseconds: 300),

                prefixIcon: Icon(Icons.email_outlined),

                // filled: true,
                // fillColor: Colors.black54
                //    focusColor: Colors.grey
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),

            TextField(
              controller: password_controller,
              obscureText: true,
              obscuringCharacter: "%",

              decoration: InputDecoration(
                hintText: "Enter Your PassWord",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.grey,
                ),

                hintFadeDuration: Duration(milliseconds: 300),

                prefixIcon: Icon(Icons.password_outlined),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
