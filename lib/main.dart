import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ali raza"),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.yellow,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.stars, size: 50),
                Icon(Icons.stars, size: 50),
                Icon(Icons.stars, size: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
