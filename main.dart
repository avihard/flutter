import 'package:flutter/material.dart';
import 'main1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'HEllo',
      home: main1(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        accentColor: Colors.black,
        splashColor: Colors.amber,
        //canvasColor: Colors.white70,
      ),
    );
  }
}
