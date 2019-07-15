import 'package:flutter/material.dart';

class iconShadedata extends StatefulWidget {
  @override
  _iconShadedataState createState() => _iconShadedataState();
}

class _iconShadedataState extends State<iconShadedata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shading'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Colors.red, Colors.grey, Colors.lightGreen],
                    begin: AlignmentDirectional.topCenter,
                    end: AlignmentDirectional.bottomCenter),
              ),
              child: Icon(
                Icons.star,
                size: 150,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  shape: BoxShape.circle,
                  gradient: RadialGradient(colors: [
                    Colors.blueAccent,
                    Colors.orange,
                    Colors.lightGreen
                  ])),
              child: Icon(
                Icons.star,
                size: 150,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  shape: BoxShape.circle,
                  gradient: SweepGradient(
                      colors: [Colors.orange, Colors.grey, Colors.red])),
              child: Icon(
                Icons.star,
                size: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
