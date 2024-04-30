import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const HomeActivity()); //Init Application
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 1)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inventory App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        titleSpacing: 10,
        backgroundColor: Colors.green,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white), // Change icon color here
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("I am comment", context);
            },
            icon: Icon(Icons.comment),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am email", context);
            },
            icon: Icon(Icons.email),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am settings", context);
            },
            icon: Icon(Icons.settings),
            color: Colors.white,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 15,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          mySnackBar("Add new product", context);
        },
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar('Home menu', context);
          } else if (index == 1) {
            mySnackBar('Chat menu', context);
          } else if (index == 2) {
            mySnackBar('Profile menu', context);
          }
        },
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(child: Text("Abid Hossain")),
            ListTile(
              leading: Icon(Icons.home),
                title: Text('Home'),
              onTap: (){mySnackBar('Home', context);},
            ),
            ListTile(
              leading: Icon(Icons.email),
                title: Text('Email'),
              onTap: (){mySnackBar('Email', context);},
            ),
            ListTile(
              leading: Icon(Icons.phone),
                title: Text('Phone'),
              onTap: (){mySnackBar('Phone', context);},
            ),
          ],
        ),
      ),
    );
  }
}
