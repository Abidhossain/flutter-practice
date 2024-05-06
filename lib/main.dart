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

  alertMessage(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: message,duration: Duration(milliseconds: 1000),)
    );
  }

  myAlertDialog(context){
    return showDialog(context: context, builder: (context){
     return Expanded(
       child: AlertDialog(
         title: Text("Do you want to send?"),
         content: Text("Please select an option"),
         actions: [
           TextButton(onPressed: (){
             alertMessage(Text("Sent Successfully"),context);
             Navigator.of(context).pop();
             },
               child: Text("Send")
           ),
           TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Cancel")),
         ]
       ),
     );
    });
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
            const IconThemeData(color: Colors.white),
      ),

      body:Center(
        child: ElevatedButton(child: Text("Click me"), onPressed: (){myAlertDialog(context);}),
      )
    );
  }
}
