import 'package:flutter/material.dart';

class dragCalc extends StatefulWidget {
  @override
  _dragCalcState createState() => _dragCalcState();
}

class _dragCalcState extends State<dragCalc> {
  double finalOut = 0;

  var isComplete0 = false;
  var isComplete1 = false;
  var isComplete2 = false;
  var isComplete3 = false;
  var isComplete4 = false;

  var dataNum0 = '';
  var dataNum1 = '';
  var dataNum2 = '';
  var dataNum3 = '';
  var dataNum4 = '';

  var finalData1 = '';
  var finalData2 = '';
  var finalData3 = '';
  var finalData4 = '';

  var dataOperator = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable Caculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable(
                  data: '+',
                  child: Container(

                    child: Text('+',style: TextStyle(fontSize: 30),),
                    height: 50,
                    width: 50,
                    ),
                  feedback: Container(
                    height: 50,
                    width: 50,
                    child: Text('+',style: TextStyle(fontSize: 30),),
                      ),
                  childWhenDragging: Container(
                    height: 50,
                    width: 50,
                    child: Text('+',style: TextStyle(fontSize: 30),),
                       ),
                ),
                Draggable(
                  data: '-',
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Text('-',style: TextStyle(fontSize: 30),),
                     ),
                  feedback: Container(
                    child: Text('-',style: TextStyle(fontSize: 30),),
                    height: 50,
                    width: 50,
                     ),
                  childWhenDragging: Container(
                    height: 50,
                    width: 50,
                    child: Text('-',style: TextStyle(fontSize: 30),),
                     ),
                ),
                Draggable(
                  data: '*',
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Text('*',style: TextStyle(fontSize: 30),),
                         ),
                  feedback: Container(
                    height: 50,
                    width: 50,
                    child: Text('*',style: TextStyle(fontSize: 30),),
                   ),
                  childWhenDragging: Container(
                    height: 50,
                    width: 50,
                    child: Text('*',style: TextStyle(fontSize: 30),),
                    ),
                ),
                Draggable(
                  data: '/',
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Text('/',style: TextStyle(fontSize: 30),),
                     ),
                  feedback: Container(
                    height: 50,
                    width: 50,
                    child: Text('/',style: TextStyle(fontSize: 30),),
                           ),
                  childWhenDragging: Container(
                    height: 50,
                    width: 50,
                    child: Text('/',style: TextStyle(fontSize: 30),),
                   ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                DragTarget(
                  builder: (context, List<String> data1, data2) {
                    return Center(
                        child: isComplete0
                            ? Container(
                                height: 50, width: 50, child: Text(dataNum0))
                            : Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.yellow),
                              ));
                  },
                  onAccept: (data) {
                    setState(() {
                      if (data == '1') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      } else if (data == '2') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      } else if (data == '3') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      } else if (data == '4') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      } else if (data == '5') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      } else if (data == '6') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      } else if (data == '7') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      } else if (data == '8') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      } else if (data == '9') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      } else if (data == '0') {
                        dataNum0 = data;
                        finalData1 = data;
                        isComplete0 = true;
                      }
                    });
                  },
                  onWillAccept: (data) {

                    return true;
                  },
                ),
                DragTarget(
                  builder: (context, List<String> data, data2) {
                    return Center(
                        child: isComplete1
                            ? Container(
                                height: 50, width: 50, child: Text(dataNum1))
                            : Container(
                                height: 50,
                                width: 50,

                                decoration: BoxDecoration(color: Colors.yellow),
                              ));
                  },
                  onAccept: (data) {
                    setState(() {
                      if (data == '1') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      } else if (data == '2') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      } else if (data == '3') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      } else if (data == '4') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      } else if (data == '5') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      } else if (data == '6') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      } else if (data == '7') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      } else if (data == '8') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      } else if (data == '9') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      } else if (data == '0') {
                        dataNum1 = data;
                        finalData2 = data;
                        isComplete1 = true;
                      }
                    });
                  },
                  onWillAccept: (data) {

                    return true;
                  },
                ),
                DragTarget(
                  builder: (context, List<String> data, data2) {
                    return Center(
                        child: isComplete2
                            ? Container(
                                height: 50, width: 50, child: Text(dataNum2))
                            : Container(
                                height: 50,
                                width: 50,

                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent),
                              ));
                  },
                  onAccept: (data) {
                    setState(() {
                      if (data == '+') {
                        isComplete2 = true;
                        dataOperator = data;
                        dataNum2 = data;
                      } else if (data == '-') {
                        isComplete2 = true;
                        dataOperator = data;
                        dataNum2 = data;
                      } else if (data == '*') {
                        isComplete2 = true;
                        dataOperator = data;
                        dataNum2 = data;
                      } else if (data == '/') {
                        isComplete2 = true;
                        dataOperator = data;
                        dataNum2 = data;
                      }
                    });
                  },
                  onWillAccept: (data) {

                    return true;
                  },
                ),
                DragTarget(
                  builder: (context, List<String> data, data2) {
                    return Center(
                        child: isComplete3
                            ? Container(
                                height: 50, width: 50, child: Text(dataNum3))
                            : Container(
                                height: 50,
                                width: 50,

                                decoration: BoxDecoration(color: Colors.yellow),
                              ));
                  },
                  onAccept: (data) {
                    setState(() {
                      if (data == '1') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      } else if (data == '2') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      } else if (data == '3') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      } else if (data == '4') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      } else if (data == '5') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      } else if (data == '6') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      } else if (data == '7') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      } else if (data == '8') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      } else if (data == '9') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      } else if (data == '0') {
                        dataNum3 = data;
                        finalData3 = data;
                        isComplete3 = true;
                      }
                    });
                  },
                  onWillAccept: (data) {

                    return true;
                  },
                ),
                DragTarget(
                  builder: (context, List<String> data, data2) {
                    return Center(
                        child: isComplete4
                            ? Container(
                                height: 50, width: 50, child: Text(dataNum4))
                            : Container(
                                height: 50,
                                width: 50,

                                decoration: BoxDecoration(color: Colors.yellow),
                              ));
                  },
                  onAccept: (data) {
                    setState(() {
                      if (data == '1') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      } else if (data == '2') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      } else if (data == '3') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      } else if (data == '4') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      } else if (data == '5') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      } else if (data == '6') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      } else if (data == '7') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      } else if (data == '8') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      } else if (data == '9') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      } else if (data == '0') {
                        dataNum4 = data;
                        finalData4 = data;
                        isComplete4 = true;
                      }
                    });
                  },
                  onWillAccept: (data) {

                    return true;
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Draggable(
                  data: '1',
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('1'),
                  ),
                  feedback: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('1'),
                  ),
                  childWhenDragging: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('1'),
                  ),
                ),
                Draggable(
                  data: '2',
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('2'),
                  ),
                  feedback: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('2'),
                  ),
                  childWhenDragging: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('2'),
                  ),
                ),
                Draggable(
                  data: '3',
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('3'),
                  ),
                  feedback: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('3'),
                  ),
                  childWhenDragging: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('3'),
                  ),
                ),
                Draggable(
                  data: '4',
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('4'),
                  ),
                  feedback: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('4'),
                  ),
                  childWhenDragging: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('4'),
                  ),
                ),
                Draggable(
                  data: '5',
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('5'),
                  ),
                  feedback: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('5'),
                  ),
                  childWhenDragging: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('5'),
                  ),
                ),
                Draggable(
                  data: '6',
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('6'),
                  ),
                  feedback: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('6'),
                  ),
                  childWhenDragging: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('6'),
                  ),
                ),
                Draggable(
                  data: '7',
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('7'),
                  ),
                  feedback: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('7'),
                  ),
                  childWhenDragging: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('7'),
                  ),
                ),
                Draggable(
                  data: '8',
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('8'),
                  ),
                  feedback: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('8'),
                  ),
                  childWhenDragging: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('8'),
                  ),
                ),
                Draggable(
                  data: '9',
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('9'),
                  ),
                  feedback: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('9'),
                  ),
                  childWhenDragging: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('9'),
                  ),
                ),
                Draggable(
                  data: '0',
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('0'),
                  ),
                  feedback: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('0'),
                  ),
                  childWhenDragging: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(color: Colors.amberAccent),
                    child: Text('0'),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: calc,
              height: 50,
              minWidth: 300,
              child: Text('='),
              color: Colors.green,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.amberAccent),
              height: 40,
              width: 100,
              child: Text(finalOut.toString()),
            )
          ],
        ),
      ),
    );
  }

  void calc() {

    setState(() {
      var raw1 = finalData1 + finalData2;
      var raw2 = finalData3 + finalData4;
      if (dataOperator == '+') {
        finalOut = double.parse(raw1) + double.parse(raw2);
        print(finalOut);
      } else if (dataOperator == '-') {
        finalOut = double.parse(raw1) - double.parse(raw2);
        print(finalOut);
      } else if (dataOperator == '*') {
        finalOut = double.parse(raw1) * double.parse(raw2);
        print(finalOut);
      } else if (dataOperator == '/') {
        finalOut = double.parse(raw1) / double.parse(raw2);
        print(finalOut);
      }

    });

  }
}
