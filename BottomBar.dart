import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var ind = 0;
  List<Container> con=[
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.lightGreen,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.purpleAccent,
    ),
  ];
  var color1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.grey,
              title: Text('Users'),

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              backgroundColor: Colors.lightGreen,
              title: Text('Add')),
          BottomNavigationBarItem(
              icon: Icon(Icons.image),
              backgroundColor: Colors.yellow,
              title: Text('Images'),
              activeIcon: Icon(Icons.import_export)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.cloud),
              backgroundColor: Colors.purpleAccent,
              title: Text('Cloud'),
              activeIcon: Icon(Icons.cloud_upload)
          )
        ],
        type: BottomNavigationBarType.shifting,
        onTap: (index){IcrementIndex(index);},
        currentIndex: ind,

      ),
      body: con[ind]
    );
  }
  void IcrementIndex(var index) {
    setState(() {
      ind = index;
//      if(ind==0)
//        {
//          color1=Colors.grey;
//        }
//      else if(ind==1)
//        {
//          color1=Colors.lightGreen;
//        }
//      else if(ind==2)
//      {
//        color1=Colors.yellow;
//      }
//      else
//        {
//          color1=Colors.purple;
//        }
    });
  }
}

