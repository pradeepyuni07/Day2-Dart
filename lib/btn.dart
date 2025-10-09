import 'package:flutter/material.dart';

class Btn extends StatefulWidget {
  const Btn({super.key});

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  bool _isHovered = false; // Track hover

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(" i am Called after 3 seconds")),
              );
            });
          },
          style: TextButton.styleFrom(
            // alignment: Alignment.centerRight,
            foregroundColor: Colors.white,
            backgroundColor: Colors.cyan,
            overlayColor: Colors.red,
            shadowColor: Colors.grey,
            // padding: EdgeInsets.only(right:20),
            //  visualDensity: VisualDensity.comfortable,
            // maximumSize: Size(500, 500),
            //   minimumSize: Size(100, 100),
            //   fixedSize: Size(100, 100),
            elevation: 10,
            // splashFactory: NoSplash.splashFactory,
            //    animationDuration: Duration(seconds: 3),
            side: BorderSide(width: 1, color: Colors.black54),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            // shape: CircleBorder(side: BorderSide(width: 200,))
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(width: 3, color: Colors.red),
            ),
          ),
          child: Text(
            "This is Text Button With onPressed()",
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 20),

        ElevatedButton(
          onPressed: () {},
          onHover: (hovering) {
            setState(() {
              _isHovered = hovering; // Change state on hover
            });
          },
          child: Text(
            "This is Elevated Button With onHover()",
            style: TextStyle(overflow: TextOverflow.ellipsis, fontSize: 20),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: _isHovered ? Colors.green : Colors.blueGrey,
            foregroundColor: Colors.white,
            shadowColor: Colors.grey,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              side: BorderSide(
                color: Colors.black54,
                width: 1,
                style: BorderStyle.solid,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
            ),
          ),
        ),

       SizedBox(height: 30,),
        OutlinedButton(onPressed: (){}, child: Text("This is OutLine Button With onLongPress()"),
            style: OutlinedButton.styleFrom(
                shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                 side: BorderSide(width: 1,color: Colors.black54)
            ),
        ),
        SizedBox(height: 30,),
        IconButton(onPressed: (){}, icon: Icon(Icons.radio_button_on),
           splashColor: Colors.greenAccent,
             splashRadius:10,
            iconSize: 30,
             color: Colors.greenAccent,
           style: IconButton.styleFrom(
                maximumSize: Size(100,100)

           ),
        ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: (){}, child: Text("This is Elevated Button With Gradient Color()",style: TextStyle(color: Colors.white),),
           style: ElevatedButton.styleFrom(
                shadowColor: Colors.black54,
                 elevation: 10,
                  shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.only(topLeft: Radius.elliptical(20, 20),bottomRight: Radius.elliptical(20,20))),
                fixedSize: Size(double.infinity, 50),
              backgroundBuilder: (context,states,child){
                 return Container(
                       decoration: BoxDecoration(
                           gradient: LinearGradient(colors: [Colors.greenAccent,Colors.redAccent])
                       ),
                   child:  child
                 );
              }
           ),
         )

      ],
    );
  }
}
