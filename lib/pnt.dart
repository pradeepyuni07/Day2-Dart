import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Pnt extends StatefulWidget {
  const Pnt({super.key});

  @override
  State<Pnt> createState() => _PntState();
}

class _PntState extends State<Pnt> {
  int curr_index = 0;

  final List<Widget> _screens = [const Home(), const Search(), const Profile()];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    // body: _screens[curr_index],
    // bottomNavigationBar: NavigationBar(
    //   surfaceTintColor: Colors.grey[200],
    //   labelPadding: const EdgeInsets.only(top: 10),
    //   labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
    //   maintainBottomViewPadding: true,
    //   elevation: 6,
    //   shadowColor: Colors.red,
    //   indicatorColor: Colors.deepOrange,
    //   indicatorShape: const RoundedSuperellipseBorder(
    //     borderRadius: BorderRadius.all(Radius.elliptical(10, 40)),
    //   ),
    //   backgroundColor: Colors.green,
    //   selectedIndex: curr_index,
    //   onDestinationSelected: (value) {
    //     setState(() {
    //       curr_index = value;
    //     });
    //   },
    //   destinations: const [
    //     NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    //     NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
    //     NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
    //   ],
    // ),

    // );

    return DefaultTabController(
      animationDuration: Duration(milliseconds: 500),
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            padding: EdgeInsets.only(left: 10, right: 10),
            indicatorWeight: 6.0,
            splashBorderRadius: BorderRadius.all(Radius.elliptical(10, 30)),
            // labelColor: Colors.redAccent,
            // automaticIndicatorColorAdjustment: true,
            labelPadding: EdgeInsets.all(10),
            // dragStartBehavior: DragStartBehavior.down,
            // isScrollable: false,
            dividerHeight: 0,
            // indicatorColor: Colors.deepOrange,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(

              boxShadow: [
                BoxShadow(spreadRadius: 1, blurRadius: 2, color: Colors.red),

                BoxShadow(spreadRadius: 2, blurRadius: 3, color: Colors.green),
              ],

              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            dividerColor: Colors.black,
            // unselectedLabelColor: Colors.blueGrey,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: TabBarView(children: _screens),
      ),
    );
  }
}

// Screens
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Home Screen hu mai",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "mai Search Screen hu",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "to mai bhi Profile Screen hu",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
