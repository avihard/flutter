import 'package:flutter/material.dart';
import 'HeroWidget1.dart';
import 'HeroWidget2.dart';
import 'HeroWidget3.dart';
import 'AnimationsVar.dart';

class HeroAnimation extends StatefulWidget {
  @override
  _HeroAnimationState createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
 // AnimationsVar rawVal = new AnimationsVar();
  var tag1 = 'hero1';
  var tag2 = 'hero2';
  var tag3 = 'hero3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hero Widget main'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                        child: Card(
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: Hero(
                                  child: Image.asset(
                                    'images/nature.jpg',
                                    height: 100,
                                    width: 100,
                                  ),tag: tag1,
                                ))),
                    onTap: (){Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnimationsVar(tag1)));},),
                    GestureDetector(
                        child: Card(
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: Hero(
                                  child: Image.asset(
                                    'images/shade.png',
                                    height: 100,
                                    width: 100,
                                  ),tag: tag2,
                                ))),
                    onTap: (){Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnimationsVar(tag2)));},
                    ),
                    GestureDetector(
                        child: Card(
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: Hero(
                                  child: Image.asset(
                                    'images/ak.jpeg',
                                    height: 100,
                                    width: 100,
                                  ),tag: tag3,
                                ))),
                    onTap: (){Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AnimationsVar(tag3)));},
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}


