import 'package:flutter/material.dart';

class PopupmenuWidget extends StatefulWidget {
  const PopupmenuWidget({super.key});

  @override
  State<PopupmenuWidget> createState() => _PopupmenuWidgetState();
}

class _PopupmenuWidgetState extends State<PopupmenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu Example"),
        actions: [
           PopupMenuButton<String>(
             // initialValue: "",
             // padding: EdgeInsets.only(right: 100),
             child: Text("menu"),
             // popUpAnimationStyle: ,
              style: ButtonStyle(
                 backgroundColor: WidgetStatePropertyAll(Colors.pink)
              ),
             color: Colors.blue,
              position: PopupMenuPosition.over,
             shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))
             ) ,
            elevation: 10,
             splashRadius: 10,
             shadowColor: Colors.red,
             //  iconColor: Colors.black,
             // iconSize: 40,
             tooltip: "Menu",
            // icon: Icon(Icons.more_vert),
            onSelected: (value) {
              // Handle selected option
              print("Selected: $value");
            },
            itemBuilder: (context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                // padding: EdgeInsets.all(10),
                  onTap: (){},
                  value: 'Option1',
                  child: Text('Option 1'),
                ),
                PopupMenuItem<String>(
                  onTap: (){},
                  value: 'Option2',
                  child: Text('Option 2'),
                ),
                PopupMenuItem<String>(
                  onTap: (){},
                  value: 'Option3',
                  child: Text('Option 3'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Click the top-right menu icon"),
      ),
    );
  }
}
