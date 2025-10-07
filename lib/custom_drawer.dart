import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      endDrawer: Drawer(
        // surfaceTintColor: Colors.red,
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        // backgroundColor: Colors.blue,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Pradeep Meena",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1.2,
                      shadows: [
                        Shadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(

                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      subtitle: Text("Go to home screen"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text("Profile"),
                      subtitle: Text("View your profile"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      subtitle: Text("App settings"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text("Notifications"),
                      subtitle: Text("View notifications"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.help),
                      title: Text("Help"),
                      subtitle: Text("Get support"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Logout"),
                      subtitle: Text("Sign out of account"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    // New 3 items
                    ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text("Favorites"),
                      subtitle: Text("Your favorite items"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text("Cart"),
                      subtitle: Text("View your cart"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.history),
                      title: Text("History"),
                      subtitle: Text("Your activity history"),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
