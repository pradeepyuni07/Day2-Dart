import 'package:flutter/material.dart';

class Pnt extends StatefulWidget {
  const Pnt({super.key});

  @override
  State<Pnt> createState() => _PntState();
}

class _PntState extends State<Pnt> {
  int curr_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavigationBar(
          labelPadding: EdgeInsets.only(top: 10),
          labelBehavior:  NavigationDestinationLabelBehavior.onlyShowSelected,
          maintainBottomViewPadding: true,
        // height: 50,
         elevation: 6,
          shadowColor: Colors.black,
          indicatorColor: Colors.deepOrange,
            indicatorShape: RoundedSuperellipseBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 40))),
          backgroundColor: Colors.green,
        onDestinationSelected: (value) {
          setState(() {
            curr_index = value;
          });
        },
        selectedIndex: curr_index,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
