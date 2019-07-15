import 'package:flutter/material.dart';
import 'dart:async' show Future;

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Avinash Korat',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text(
              'Developer',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 25, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.message,
                    size: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/ak.jpeg'),
                      backgroundColor: Colors.black26,
                      minRadius: 40,
                    ),
                  ),
                  Icon(
                    Icons.call,
                    size: 35,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Divider(
                height: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('1.5k',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Posts')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('2.5K',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Followers')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('10K',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Comments')
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('2.2K',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Following')
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Divider(
                height: 4,
              ),
            ),
            Text('Google Developer Expert for Flutter.'),
            Text('Passionate #flutter, #Swift Developer'),
            Text('#Entrepreneur #youtube'),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 60),
              child: Divider(
                height: 4,
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Website',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Location',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(65, 8, 61, 0),
                      child: Text(
                        'www.google.com',
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        'Ahmedabad',
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 14),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(90, 0, 105, 0),
                        child: Text(
                          'Phone',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(67, 8, 32, 0),
                      child: Text(
                        '+917878949810',
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        'patelavi955@gmail.com',
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 14),
                      ),
                    )
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(82, 8, 81, 0),
                      child: Text(
                        'Youtube',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        'Facebook',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(67, 8, 52, 0),
                      child: Text(
                        'youtube.com/avi',
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        'fb.com/avi.korat',
                        style: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 14),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.person_add),
      ),
    );
  }
}
