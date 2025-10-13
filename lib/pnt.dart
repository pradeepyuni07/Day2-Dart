import 'package:flutter/material.dart';

class Pnt extends StatefulWidget {
  const Pnt({super.key});

  @override
  State<Pnt> createState() => _PntState();
}

class _PntState extends State<Pnt> {
  int curr_index = 0;

  final List<Widget> _screens = [
    const Home(),
    const Search(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[curr_index],
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: Colors.grey[200],
        labelPadding: const EdgeInsets.only(top: 10),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        maintainBottomViewPadding: true,
        elevation: 6,
        shadowColor: Colors.red,
        indicatorColor: Colors.deepOrange,
        indicatorShape: const RoundedSuperellipseBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(10, 40)),
        ),
        backgroundColor: Colors.green,
        selectedIndex: curr_index,
        onDestinationSelected: (value) {
          setState(() {
            curr_index = value;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
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
