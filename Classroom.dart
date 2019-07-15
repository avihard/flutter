import 'package:flutter/material.dart';

class Classroom extends StatefulWidget {
  @override
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  List<String> name = ['Avinash', 'Krunal', 'Dixit'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.menu),
            ),
            new Tab(
              icon: Icon(Icons.message),
            ),
            new Tab(
              text: 'Home',
              icon: Icon(Icons.notifications),
            ),
            new Tab(
              text: 'Home',
              icon: Icon(Icons.person),
            ),
          ],
        ),
        body: new TabBarView(children: <Widget>[
          SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.pinkAccent, Colors.deepPurple],
                      begin: AlignmentDirectional.topEnd)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                    child: Card(
                      elevation: 25,
                      shape: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        height: 250,
                        width: 270,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('images/ak.jpeg'),
                              radius: 35,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                              child: Text(
                                'Avinash Korat',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                              child: Text(
                                'Developer',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              height: 30,
                              color: Colors.lightBlue,
                              minWidth: 100,
                              child: Text(
                                'Connect',
                                style: TextStyle(color: Colors.black45),
                              ),
                              elevation: 25,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(25, 7, 25, 0),
                              child: Text(
                                'Gandhinagar Institute Of Technology, Gandhinagar',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Container(
                      height: 240,
                      width: 270,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        elevation: 25,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 160, 0),
                                  child: Text(
                                    'Class',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 8, 0),
                                  child: Icon(Icons.keyboard_arrow_left),
                                )
                              ],
                            ),
                            Divider(
                              height: 15,
                            ),
                            ListView.builder(
                                itemCount: name.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (BuildContext ctext, int index) {
                                  return Container(

                                    height: 60,
                                    width: 180,
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 10, 0, 0),
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage('images/nature.jpg'),
                                            radius: 25,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 15, 0, 0),
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                name[index],
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black87),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(0,5,0,0),
                                                child: Text(
                                                  '40 Students',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black87),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                })
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(),
          Container(),
          Container()
        ]),
      ),
    );
  }
}
