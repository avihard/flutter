import 'package:flutter/material.dart';
import 'package:lamp/lamp.dart';

class FlashLight extends StatefulWidget {
  @override
  _FlashLightState createState() => _FlashLightState();
}

class _FlashLightState extends State<FlashLight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flash Light'),
      ),
      body: Column(
        children: <Widget>[
          MaterialButton(
            onPressed: light,
            height: 100,
            minWidth: 300,
            color: Colors.lightBlueAccent,
            child: Text(
              'On',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }

  void light() {
    setState(() {
      Lamp.turnOn(intensity: 2.0);
    });
  }
}
