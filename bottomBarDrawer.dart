import 'package:flutter/material.dart';

class bottomBarDrawer extends StatefulWidget {
  @override
  _bottomBarDrawerState createState() => _bottomBarDrawerState();
}

class _bottomBarDrawerState extends State<bottomBarDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Bar'),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Icon(Icons.import_export),
            Icon(Icons.cloud),
            Icon(Icons.person),
            Icon(Icons.image),
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(),
    );
  }
}
