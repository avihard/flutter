import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  @override
  _AnimatedIconWidgetState createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  bool aa = false;
  Animation<double> animation;
  AnimationController animationController;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = new Tween<double>(begin: 0, end: 1).animate(animationController)
      ..addListener(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Icon'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: AnimatedIcon(
                  icon: AnimatedIcons.event_add, progress: animation),
              onTap: () {
                gesture();
              },
            ),
            GestureDetector(
              child: AnimatedIcon(
                  icon: AnimatedIcons.home_menu, progress: animation),
              onTap: () {
                gesture();
              },
            ),
            GestureDetector(
              child: AnimatedIcon(
                  icon: AnimatedIcons.play_pause, progress: animation),
              onTap: () {
                gesture();
              },
            ),
            GestureDetector(
              child: AnimatedIcon(
                  icon: AnimatedIcons.menu_close, progress: animation),
              onTap: () {
                gesture();
              },
            ),
            GestureDetector(
              child: AnimatedIcon(
                  icon: AnimatedIcons.arrow_menu, progress: animation),
              onTap: () {
                gesture();
              },
            )
          ],
        ),
      ),
    );
  }

  void gesture() {
    setState((){
      if (aa == false){
        animationController.forward();
        aa = true;
      }
      else {
        animationController.reverse();
        aa = false;
      }
    });
  }
}
