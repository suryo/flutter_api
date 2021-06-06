import 'views/halamanutama.dart';
import 'views/halamaninput.dart';
import 'views/halamansatu.dart';
import './halamandua.dart';
import './halamantiga.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "My App",
    home: new MyApp(),
  ));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: 'MY App', home: HalamanInput());
//   }
// }

class MyApp extends StatefulWidget {
  @override
  _HalamannavState createState() => _HalamannavState();
}

class _HalamannavState extends State {
  int _selectedIndex = 0;

  final _widgetOptions = [
    Halamansatu(),
    Halamandua(),
    Halamantiga(),
    HalamanUtama(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SizedBox.expand(
      //   child: Container(color: Colors.pinkAccent, child: Center()),
      // ),

      // appBar: AppBar(
      //   title: Text('BelajarFlutter.com'),
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //         gradient: LinearGradient(
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //             colors: <Color>[Colors.green, Colors.blue])),
      //   ),
      // ),

      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop),
            backgroundColor: Colors.pinkAccent,
            title: Text('Satu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_compact),
            title: Text('Dua'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Tiga'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Data'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('Tiga'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        fixedColor: Colors.red,
        backgroundColor: Colors.pinkAccent[80],
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
