import 'package:flutter/material.dart';

class AnimatedCrossFade1 extends StatefulWidget {
  @override
  _AnimatedCrossFade1State createState() => _AnimatedCrossFade1State();
}

class _AnimatedCrossFade1State extends State<AnimatedCrossFade1> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Screens'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedCrossFade(
                  alignment: Alignment.bottomCenter,
                  firstChild: Icon(Icons.account_balance,
                size: 150,

              ),
                  secondChild: MaterialButton(onPressed: (){},
                  color: Colors.cyan,
                  child: Text('asda'),
              ),
                  crossFadeState: flag?CrossFadeState.showSecond:CrossFadeState.showFirst,
                  duration: Duration(seconds: 1)),

              MaterialButton(onPressed: runSet,
                child: Text('Hola'),
                color: Colors.black26,
              ),
            ],
          ),
        ),
      ),
      
    );
  }

  void runSet() {
    setState(() {

    if (flag == true){
      flag = false;
    } else {
      flag = true;
    }

    });
  }
}

