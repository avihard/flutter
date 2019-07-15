import 'package:flutter/material.dart';

class DrawerHead extends StatefulWidget {
  @override
  _DrawerHeadState createState() => _DrawerHeadState();
}

class _DrawerHeadState extends State<DrawerHead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Header'),
      ),
      body: Container(
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/ak.jpeg'),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.hue))),
      ),
    );
  }
}
