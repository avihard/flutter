import 'package:flutter/material.dart';

class AnimatedPro extends StatefulWidget {
  @override
  _AnimatedProState createState() => _AnimatedProState();
}

class _AnimatedProState extends State<AnimatedPro> {
  var MyColor = Colors.cyan;
  var MyHeight = 100.0;
  var MyWidhth = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Pro'),
      ),
      body: Center(
        child: AnimatedContainer(duration: Duration(seconds: 2),
          width: MyWidhth,
          height: MyHeight,
          color: MyColor,
          child: MaterialButton(onPressed: Ani,
          child: Text('Animation'),
            color: Colors.cyan,
          ),
        ),
      ),
    );

  }
  void Ani() {
    setState(() {
      if (MyColor == Colors.cyan) {
        MyColor = Colors.amber;
        MyHeight = 900.0;
        MyWidhth = 400.0;
      } else {
        MyColor = Colors.cyan;
        MyHeight = 100.0;
        MyWidhth = 100.0;
      }
    }
      );
  }
}
