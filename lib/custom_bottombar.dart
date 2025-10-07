import 'package:flutter/material.dart';

class CustomBottombar extends StatefulWidget {
  const CustomBottombar({super.key});

  @override
  State<CustomBottombar> createState() => _CustomBottombarState();
}

class _CustomBottombarState extends State<CustomBottombar> {
  int currIndex = 0; // start with home
  final List<Widget> screenList = [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currIndex,
        children: screenList,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Color(0xFFFFFDF9),
            borderRadius: BorderRadius.all(
              Radius.circular(16)
             
              
            ),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 5,spreadRadius: 3),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, Icons.home_outlined, "Home"),
              _buildNavItem(1, Icons.search_outlined, "Search"),
              _buildNavItem(2, Icons.person_outline, "Profile"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, String label) {
    final bool isActive = currIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          currIndex = index;
        });
      },
      child: AnimatedContainer(

        duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(horizontal:isActive? 12:0, vertical:isActive? 8:0),
        decoration: BoxDecoration(
          color: isActive ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 28,
              color: isActive ? Colors.white : Colors.grey,
            ),
            if (isActive) ...[
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen', style: TextStyle(fontSize: 24)),
    );
  }
}
