import 'package:flutter/material.dart';

class newOne extends StatefulWidget {
  @override
  _newOneState createState() => _newOneState();
}

class _newOneState extends State<newOne> {
  var isComplete = false;

  var ico1 = Icon(Icons.import_export,size: 100,);
  
  var global = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Braggable'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Draggable(
                  data: 'Avi',
                  child: Icon(
                    Icons.thumb_up,
                    size: 100,
                  ),
                  feedback: Icon(
                    Icons.thumb_up,
                    size: 100,
                  ),
                  childWhenDragging: Icon(
                    Icons.thumb_up,
                    size: 100,
                  ),
                ),
                Draggable(
                  data: 'king',
                  child: Icon(
                    Icons.cloud,
                    size: 100,
                  ),
                  feedback: Icon(
                    Icons.cloud,
                    size: 100,
                  ),
                  childWhenDragging: Icon(
                    Icons.cloud,
                    size: 100,
                  ),
                ),
                Draggable(
                  data: 'Wrong',
                  child: Icon(
                    Icons.image,
                    size: 100,
                  ),
                  feedback: Icon(
                    Icons.image,
                    size: 100,
                  ),
                  childWhenDragging: Icon(
                    Icons.image,
                    size: 100,
                  ),
                ),
              ],
            ),
            DragTarget(onAccept: (data) {
              setState(() {
                if (data == 'Avi') {
                  isComplete = true;
                  global = data;
                   ico1= Icon(Icons.thumb_up,size: 100,);
                }
                else if (data == 'king'){
                  isComplete = true;
                  global = data;
                  ico1= Icon(Icons.cloud,size: 100,);
                }
                else
                  {
                    isComplete = true;
                    global = data;
                    ico1= Icon(Icons.image,size: 100,);
                  }

              });
            }, onWillAccept: (data) {
              return true;
            }, builder: (context, List<String> data1, data2) {
              return Center(
                child: isComplete
                    ? Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                        child: ico1
                      )
                    : Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                      ),
              );
            }),
            Text(global)
          ],
        ),
      ),
    );
  }
}
