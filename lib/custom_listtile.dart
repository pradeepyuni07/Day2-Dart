import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListtile extends StatefulWidget {
  const CustomListtile({super.key});

  @override
  State<CustomListtile> createState() => _CustomListtileState();
}

class _CustomListtileState extends State<CustomListtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            // visualDensity: VisualDensity(vertical: -2, horizontal: 0),
            // dense: true,
              // horizontalTitleGap: 50,
            // enabled: false,
            // enableFeedback: true,
            //   selected: true,
            // textColor: Colors.deepOrange,
             style: ListTileStyle.list,
              // minVerticalPadding: 30,
              // minLeadingWidth: 10,
              // minTileHeight: 500,
            tileColor: Colors.black54,
           // selected: true,
                iconColor: Colors.greenAccent,
           //   internalAddSemanticForOnTap: true,
            shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(12)),
                      side: BorderSide(width: 2,color: Colors.yellow)
             ),
            autofocus: true,
             dense: true,
            visualDensity: VisualDensity(vertical: -4), // more compact

            titleAlignment:  ListTileTitleAlignment.top,
            selectedTileColor: Colors.blue,
            focusColor: Colors.blueGrey,
            // contentPadding: EdgeInsets.all(12.0),
            // isThreeLine: true,
            splashColor: Colors.greenAccent,
            onTap: () {},
            // selectedColor: Colors.limeAccent,
            leading: Icon(Icons.person),
            title: Text(
              "I am a Title",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            subtitle: Text(
              "This is subTitle",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
