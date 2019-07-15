import 'package:flutter/material.dart';
import 'login.dart';
import 'drawer.dart';
import 'package:final_app/DrawerHead.dart';
import 'package:toast/toast.dart';

class main1 extends StatefulWidget {
  @override
  _main1State createState() => _main1State();
}

class _main1State extends State<main1> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: drawer(),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                imageAssetLogin(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextFormField(
                    controller: _userController,
                    decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: MaterialButton(
                    onPressed: login1,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    height: 50,
                    minWidth: 200,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DrawerHead()));
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    child: Text(
                      'drawer',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    height: 50,
                    minWidth: 200,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login1() {
    setState(() {
      if (_userController.text == 'avi' && _passwordController.text == '123') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => login()));
      } else {
        Toast.show("Incorrect Login Attempt", context,
            backgroundRadius: 30.0,
            backgroundColor: Colors.black12,
            gravity: Toast.BOTTOM);
      }
    });
  }
}

class imageAssetLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(image: assetImage);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Container(
        height: 200,
        width: 200,
        child: image,
      ),
    );
  }
}
