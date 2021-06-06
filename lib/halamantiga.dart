import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Halaman tiga",
    home: new Halamantiga(),
  ));
}

class Halamantiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Halaman tiga"),
        ),
        body: new Container(
            padding: EdgeInsets.all(20.0),
            child: new Center(
              child: new Text("Halaman tiga"),
            )));
  }
}
