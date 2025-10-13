import 'dart:async';

import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final List<Widget> _screens = [const Home(), const Search(), const Profile()];
  int currentPage = 0;
  PageController _controller = PageController();
  @override
  void initState() {
    super.initState();
    _controller = PageController();

    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentPage < _screens.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _controller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

    });
  }

    void Dispose(){
       super.dispose();
       _controller.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: PageView(

              controller: _controller,
              padEnds: true,
              physics: BouncingScrollPhysics(),
              // pageSnapping: false,
              children: _screens,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,

                  margin: EdgeInsets.all(4),
                  width: currentPage == index ? 12 : 8,
                  height: currentPage == index ? 12 : 8,
                  decoration: BoxDecoration(
                    color: currentPage == index ? Colors.green : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
        ],
      ),


    );


  }
}

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
