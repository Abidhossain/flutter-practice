import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); //Init Application
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

    mySnackBar(message , context) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message),duration: const Duration(seconds: 1))
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App",style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),),
        titleSpacing: 10,
        backgroundColor: Colors.green,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            mySnackBar("I am comment",context);
          },
              icon: Icon(Icons.comment),color: Colors.white
          ),
          IconButton(onPressed: (){
            mySnackBar("I am email",context);
          },
              icon: Icon(Icons.email),color: Colors.white
          ),
          IconButton(onPressed: (){
            mySnackBar("I am settings",context);
          },
              icon: Icon(Icons.settings),color: Colors.white
          ),
        ],
      )
    );
  }
}
