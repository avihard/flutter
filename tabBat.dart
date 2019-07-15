import 'package:flutter/material.dart';

class tabBar extends StatefulWidget {
  @override
  _tabBarState createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  bool flag = true;
  bool flag1 = true;
  bool flag2 = true;
  bool flag3 = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
      bottomNavigationBar: TabBar(
        indicatorColor: Colors.amber,
        labelColor: Colors.cyanAccent,
        unselectedLabelColor: Colors.purple,
        tabs: <Widget>[
        new Tab(
          text: 'Home',
          icon: Icon(Icons.add),
        ),
        new Tab(
          text: 'Home',
          icon: Icon(Icons.face),

        ),
        new Tab(
          text: 'Home',
          icon: Icon(Icons.face),

        ),
          new Tab(
            text: 'Home',
            icon: Icon(Icons.face),

          ),
      ],
      ),
          body: new TabBarView(children: <Widget>[
          Container(
             child: Padding(
               padding: const EdgeInsets.fromLTRB(20,330,0,0),
               child: Column(
                  children: <Widget>[
                    AnimatedCrossFade(firstChild: IconButton(icon: Icon(Icons.arrow_forward_ios)
                        , onPressed: setData,color: Colors.deepOrange,iconSize: 100.0,),
                    secondChild: MaterialButton(onPressed: setData, color: Colors.red,height: 100,minWidth: 100,),
                    crossFadeState: flag?CrossFadeState.showSecond : CrossFadeState.showFirst ,
                    duration: Duration(milliseconds: 500))
                         ],
                    ),
             ),
            color: Colors.black26,
              ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,300,30,0),
                child: Column(
                  children: <Widget>[
                    AnimatedCrossFade(firstChild: MaterialButton(onPressed: setData2,
                        height: 45,
                        minWidth: 98,
                        color: Colors.black,
                    ),
                        secondChild: TextFormField(decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                          fillColor: Colors.deepPurple,
                          labelText: 'Cool',

                        ),
                          onEditingComplete: setData2,
                        ),
                        crossFadeState: flag1?CrossFadeState.showFirst: CrossFadeState.showSecond,
                        duration: Duration(milliseconds: 500))
                  ],
                ),
              ),
              color: Colors.blue,
            ),
            Container(
              color: Colors.lightBlueAccent,

              child: Padding(
                padding: const EdgeInsets.fromLTRB(20,100,20,0),
                child: Column(
                  children: <Widget>[
                    AnimatedCrossFade(firstChild: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        labelText: 'Formalities',

                      ),
                      onEditingComplete: setData3,
                      keyboardAppearance: Brightness.light,
                    ), secondChild:
                        Container(
                          child: ListTile(
                            title: Text('Done'),
                            onTap: setData3,

                          ),

                    ),
                        crossFadeState: flag2?CrossFadeState.showFirst:CrossFadeState.showSecond,
                        duration: Duration(milliseconds: 500))
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Column(
                children: <Widget>[
                  AnimatedCrossFade(firstChild: Container(
                      height: 300,
                    color: Colors.white10,
                  ), secondChild: Container(

                    height: 300,
                    color: Colors.deepOrangeAccent,

                  ),
                      crossFadeState: flag3?CrossFadeState.showFirst:CrossFadeState.showFirst,
                      duration: Duration(milliseconds: 500))
                ],
              ),
            )
          ]
          ),
    ));
  }
  void setData() {
    setState(() {
      if (flag == true){
        flag = false;
      }else {
        flag = true;
      }
    });
  }

  void setData2() {
    setState(() {
      if (flag1 == true){
        flag1 = false;
      }else {
        flag1 = true;
      }
    });
  }

  void setData3() {
    setState(() {
      if (flag2 == true){
        flag2 = false;
      }else {
        flag2 = true;
      }
    });
  }
  void setData4() {
    setState(() {
      if (flag3 == true){
        flag3 = false;
      }else {
        flag3 = true;
      }
    });
  }

}
