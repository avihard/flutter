import 'package:flutter/material.dart';

class HeroWidget1 extends StatefulWidget {
  @override
  _HeroWidget1State createState() => _HeroWidget1State();
}

class _HeroWidget1State extends State<HeroWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          child: Hero(tag: 'hero1',child: Image.asset('images/nature.jpg')),
        ),
      ),

    );
  }
}
