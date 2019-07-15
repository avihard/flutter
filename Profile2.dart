import 'package:flutter/material.dart';

class Profile2 extends StatefulWidget {
  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 240,
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(135, 10, 135, 0),
                  child: CircleAvatar(
                    minRadius: 60,
                    backgroundImage: AssetImage('images/ak.jpeg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    'Korat Avinash',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    'Flutter Learner',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 35, 0, 0),
                child: Text(
                  'Photos',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Card(
                  child: ListView(
                    itemExtent: 100,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ListTile(
                        title: Image(image: AssetImage('images/nature.jpg')),
                      ),
                      ListTile(
                          title: Image(image: AssetImage('images/nature.jpg'))),
                      ListTile(
                        title: Image.asset(
                          'images/nature.jpg',
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                      ListTile(
                        title: Image.asset(
                          'images/nature.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 35, 0, 0),
                child: Text(
                  'Post',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
            child: Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/ak.jpeg'),
                          minRadius: 20,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 8),
                          child: Text('Avinash Korat posted a photo'),
                        ),
                        Text('30 Minutes ago'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              height: 200,
              width: 400,
              child: Card(
                  child: Image.asset(
                'images/nature.jpg',
                fit: BoxFit.fill,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
