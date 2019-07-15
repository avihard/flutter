import 'package:flutter/material.dart';
class HeroWidget3 extends StatefulWidget {
  @override
  _HeroWidget3State createState() => _HeroWidget3State();
}

class _HeroWidget3State extends State<HeroWidget3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: GestureDetector(
          child: Container(
            child: Hero(tag: 'hero3',child: Image.asset('images/ak.jpeg')),
          ),

        ),
      ),

    );
  }
}
