import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({
    super.key,
  });

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 1)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Inventory App",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        titleSpacing: 10,
        backgroundColor: Colors.green,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        iconTheme:
            const IconThemeData(color: Colors.white), // Change icon color here
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("I am comment", context);
            },
            icon: const Icon(Icons.comment),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am email", context);
            },
            icon: const Icon(Icons.email),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              mySnackBar("I am settings", context);
            },
            icon: const Icon(Icons.settings),
            color: Colors.white,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 15,
        onPressed: () {
          mySnackBar("Add new product", context);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
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
            // const Drawer(child: Text("Abid Hossain")),
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.green),
                  accountName: Text("Abid Hossain"),
                  accountEmail: Text("abid@theme29.com"),
                  currentAccountPicture: Image.network("https://iconape.com/wp-content/png_logo_vector/avatar-9.png"),
                )
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                mySnackBar('Home', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Email'),
              onTap: () {
                mySnackBar('Email', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Phone'),
              onTap: () {
                mySnackBar('Phone', context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: 300,
        width: 450,
        color: Colors.blueAccent,
        padding: EdgeInsets.fromLTRB(10, 20,30,40),
        margin: EdgeInsets.fromLTRB(10, 10,10,40),
        child: Image.network("https://iconape.com/wp-content/png_logo_vector/avatar-9.png")
      )
    );
  }
}
