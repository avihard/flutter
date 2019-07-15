import 'package:flutter/material.dart';

class DataList extends StatefulWidget {
  @override
  _DataListState createState() => _DataListState();
}

class _DataListState extends State<DataList> {
  int i = 0;
  int j = 0;
  List<String> names = ['avinash', 'Avi', 'Richard'];
  List<String> location = ['Ahmedabad', 'Amreli', 'Canada'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List of data'),
        ),
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (BuildContext ctext, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Card(
                  child: Column(children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                                backgroundImage: AssetImage('images/ak.jpeg')),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 2, 0, 2),
                                  child: Text(
                                    names[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 2, 0, 2),
                                  child: Text(
                                    location[index],
                                    style: TextStyle(color: Colors.red),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                              'Google Developer Expert for Flutter. Passionate'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('#Flutter, #Android Developer, #Entrepreneur'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('#Youtube'),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset('images/ak.jpeg'),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.thumb_up),
                            onPressed: () {
                              setState(() {
                                i++;
                              });
                            }),
                        Text(' $i Likes'),
                        IconButton(
                            icon: Icon(Icons.mode_comment),
                            onPressed: () {
                              setState(() {
                                j++;
                              });
                            }),
                        Text('$j Comments'),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text('Just now'),
                        ),
                      ],
                    )
                  ]),
                ),
              );
            }));
  }
}
