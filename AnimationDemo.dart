import 'package:flutter/material.dart';

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo> {
  bool flag1 = true;
  var height1 = 100;
  var width1 = 100;

  bool flag2 = true;
  var height2 = 100;
  var width2 = 100;

  bool flag3 = true;
  var height3 = 100;
  var width3 = 100;

  bool flag4 = true;
  var height4 = 100;
  var width4 = 100;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(


              child: Row(
              //  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,0,10),
                    child: Container(
                      height: 380,
                      width: 190,
                      alignment: Alignment.bottomRight,
                      child: AnimatedCrossFade(firstChild: MaterialButton(onPressed: box1,
                      color: Colors.blueAccent,
                        height: 500,
                        minWidth: 200,

                      ),
                          secondChild: MaterialButton(onPressed: box1,
                          color:Colors.blueAccent,
                          ),
                          crossFadeState: flag1?CrossFadeState.showSecond:CrossFadeState.showFirst,
                          duration: Duration(milliseconds: 500)),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,0,10),
                    child: Container(
                      height: 380,
                      width: 192,
                      alignment: Alignment.bottomLeft,
                      child: AnimatedCrossFade(firstChild: MaterialButton(onPressed: box2,
                        color: Colors.blueAccent,
                        height: 500,
                        minWidth: 200,
                      ),
                          secondChild: MaterialButton(onPressed: box2,
                            color:Colors.blueAccent,
                          ),
                          crossFadeState: flag2?CrossFadeState.showSecond:CrossFadeState.showFirst,
                          duration: Duration(milliseconds: 500)),
                    ),
                  ),
                  ],
              ),
            ),
            Container(
          //    height: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[


      Padding(
        padding: const EdgeInsets.fromLTRB(0,0,0,0),
        child: Container(
          height: 375,
          width: 190,
          alignment: Alignment.topRight,
          child: AnimatedCrossFade(firstChild: MaterialButton(onPressed: box3,
            color: Colors.blueAccent,
            height: 500,
            minWidth: 200,
          ),
            secondChild: MaterialButton(onPressed: box3,
              color:Colors.blueAccent,
            ),
            crossFadeState: flag3?CrossFadeState.showSecond:CrossFadeState.showFirst,
            duration: Duration(milliseconds: 500)),
        ),
      ),


         Padding(
           padding: const EdgeInsets.fromLTRB(10,0,0,0),
           child: Container(
             height: 375,
             width: 192,
             alignment: Alignment.topLeft,
             child: AnimatedCrossFade(firstChild: MaterialButton(onPressed: box4,
                   color: Colors.blueAccent,
               height: 400,
               minWidth: 200,
              ),
                    secondChild: MaterialButton(onPressed: box4,
                     color:Colors.blueAccent,
                  ),
                   crossFadeState: flag4?CrossFadeState.showSecond:CrossFadeState.showFirst,
                    duration: Duration(milliseconds: 500)),
           ),
         ),


    ],

               ),
            )
          ],
        ),
      ),
    );
  }

  void box1() {
    setState(() {
      if(flag1 == true) {
        flag1 = false;
      }else {
        flag1 = true;
      }
    });
  }

  void box2() {
    setState(() {
      if(flag2 == true) {
        flag2 = false;
      }else {
        flag2 = true;
      }
    });
  }

  void box3() {
    setState(() {
      if(flag3 == true) {
        flag3 = false;
      }else {
        flag3 = true;
      }
    });
  }

  void box4() {
    setState(() {
      if(flag4 == true) {
        flag4 = false;
      }else {
        flag4 = true;
      }
    });
  }
}
