import 'package:flutter/material.dart';

class DataGrid extends StatefulWidget {
  @override
  _DataGridState createState() => _DataGridState();
}

class _DataGridState extends State<DataGrid> {
  int i = 1;
  List<String> img = [
    'images/ak.jpeg',
    'images/nature.jpg',
    'images/ak.jpeg',
    'images/nature.jpg',
    'images/ak.jpeg',
    'images/nature.jpg',
    'images/ak.jpeg',
    'images/nature.jpg',
    'images/ak.jpeg',
    'images/nature.jpg',
    'images/ak.jpeg',
    'images/nature.jpg',
    'images/ak.jpeg',
    'images/nature.jpg',
    'images/ak.jpeg',
    'images/nature.jpg',
    'images/ak.jpeg',
    'images/nature.jpg',
    'images/ak.jpeg',
    'images/nature.jpg',
  ];
  List<Icon> ico = [
    Icon(
      Icons.person,
      color: Colors.white,
    ),
    Icon(
      Icons.shopping_cart,
      color: Colors.white,
    ),
    Icon(
      Icons.label_important,
      color: Colors.white,
    ),
    Icon(
      Icons.cloud_upload,
      color: Colors.white,
    ),
    Icon(
      Icons.grid_on,
      color: Colors.white,
    ),
    Icon(
      Icons.person,
      color: Colors.white,
    ),
    Icon(
      Icons.shopping_cart,
      color: Colors.white,
    ),
    Icon(
      Icons.label_important,
      color: Colors.white,
    ),
    Icon(
      Icons.cloud_upload,
      color: Colors.white,
    ),
    Icon(
      Icons.grid_on,
      color: Colors.white,
    ),
    Icon(
      Icons.person,
      color: Colors.white,
    ),
    Icon(
      Icons.shopping_cart,
      color: Colors.white,
    ),
    Icon(
      Icons.label_important,
      color: Colors.white,
    ),
    Icon(
      Icons.cloud_upload,
      color: Colors.white,
    ),
    Icon(
      Icons.grid_on,
      color: Colors.white,
    ),
    Icon(
      Icons.person,
      color: Colors.white,
    ),
    Icon(
      Icons.shopping_cart,
      color: Colors.white,
    ),
    Icon(
      Icons.label_important,
      color: Colors.white,
    ),
    Icon(
      Icons.cloud_upload,
      color: Colors.white,
    ),
    Icon(
      Icons.grid_on,
      color: Colors.white,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        pinned: true,
        backgroundColor: Colors.black,
        expandedHeight: 130,
        flexibleSpace: FlexibleSpaceBar(
          background: Image(
            image: AssetImage('images/shade.png'),
            fit: BoxFit.fill,
          ),
          title: Row(
            children: <Widget>[
              FlutterLogo(
                colors: Colors.yellow,
                duration: Duration(milliseconds: 500),
              ),
              Text('Flutter')
            ],
          ),
        ),
      ),
      SliverGrid.count(
          crossAxisCount: 2,
          // scrollDirection: Axis.vertical,
          children: List.generate(20, (index) {
            return Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: Container(
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.black, blurRadius: 5),
                            ],
                            image: DecorationImage(
                              image: AssetImage(img[index]),
                              fit: BoxFit.fill,
                              colorFilter: ColorFilter.mode(
                                  Colors.black87, BlendMode.hardLight),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                              child: MaterialButton(
                                onPressed: (){showModalBottomSheet(context: context, builder: (BuildContext context){
                                  return Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('images/nature.jpg'))
                                    ) ,
                                  );
                                });},
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        ico[index],
                                        Text(
                                          'Shop',
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          height: 200,
                          width: 200,
                        )
                      ],
                    ),
                  ),
                ));
          })),
    ]));
  }
}
