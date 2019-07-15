import 'package:flutter/material.dart';

class AnimationsVar extends StatefulWidget {
  var val = '';
  AnimationsVar(var val ){
    this.val = val;
  }

  @override
  _AnimationsVarState createState() => _AnimationsVarState(val);
}

class _AnimationsVarState extends State<AnimationsVar> {

  var path = '';
  var value = '';

  _AnimationsVarState(var value){
    this.value = value;

  }
@override
  void initState() {

  //  var X = MediaQuery.of(context).size.height.toString();

  if(value == 'hero1'){
    path = 'images/nature.jpg';

  } else if (value == 'hero2') {
    path = 'images/shade.png';
  } else if (value == 'hero3') {
    path = 'images/ak.jpeg';
  }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          height: 1000,
          width: 500,
          decoration: BoxDecoration(color: Colors.black),
          child: Image.asset(path),
        ),

      ),
    );
  }

}

//
//class AnimationsVar {
//  var values = '';
//  AnimationsVar(var values){
//    this.values = values;
//  }
//
//}
