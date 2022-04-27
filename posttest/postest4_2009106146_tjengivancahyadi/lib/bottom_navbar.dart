import 'package:flutter/material.dart';
import 'barang.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  List<BottomNavigationBarItem> _navBarItem = [
    BottomNavigationBarItem(
      icon: Icon(Icons.list),
      label: "Items",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_basket),
      label: "Basket",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
  ];

  int _index = 0;
  List<Widget> _body = [
    Center(child: Container(child: Icon(Icons.list, size: 100.0))),
    Center(child: Container(child: Icon(Icons.shopping_basket, size: 100.0))),
    Center(child: Container(child: Icon(Icons.person, size: 100.0))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar Page"),
        backgroundColor: Colors.black,
      ),
      body: _body.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        items: _navBarItem,
        currentIndex: _index,
        onTap: (i) {
          setState(() {
            _index = i;
          });
        },
      ),
    );
  }
}
