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

  alertMessage(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: message,
      duration: Duration(milliseconds: 1000),
    ));
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 40));


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
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 40, // Set the desired height here
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter First Name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 40, // Set the desired height here
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Last Name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 40, // Set the desired height here
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter Email Address",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                    style: buttonStyle,
                    onPressed: () {},
                    child: Text("Submit")))
          ],
        ));
  }
}
