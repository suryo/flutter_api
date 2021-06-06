import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Halaman dua",
    home: new Halamandua(),
  ));
}

class Halamandua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Halaman dua"),
        ),
        body: new Container(
            padding: EdgeInsets.all(20.0),
            child: new Center(
              child: new Text("Halaman dua"),
            )));
  }
}
