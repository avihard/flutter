import 'package:flutter/material.dart';
import 'login.dart';
import 'package:final_app/Profile.dart';
import 'Profile2.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/ak.jpeg'),
                      fit: BoxFit.fill,
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.hue))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/ak.jpeg'),
                  minRadius: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    'Avinash Korat',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Divider(
              height: 4,
            ),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.arrow_forward_ios),
                Text('Profile 1')
              ],
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          Divider(
            height: 4,
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.arrow_forward_ios),
                Text('Profile 2')
              ],
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile2()));
            },
          ),
          Divider(
            height: 4,
          ),
          ListTile(
            title: Row(
              children: <Widget>[Icon(Icons.arrow_forward_ios), Text('Home')],
            ),
          ),
        ],
      ),
    );
  }
}
