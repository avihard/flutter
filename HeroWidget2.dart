import 'package:flutter/material.dart';

class HeroWidget2 extends StatefulWidget {
  @override
  _HeroWidget2State createState() => _HeroWidget2State();
}

class _HeroWidget2State extends State<HeroWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          child: Hero(tag: 'hero2',child: Image.asset('images/shade.png')),
        ),
      ),

    );
  }
}
