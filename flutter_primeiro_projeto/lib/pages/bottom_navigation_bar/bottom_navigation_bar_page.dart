import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigation_bar/page1.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigation_bar/page2.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Página 1',
            icon: Icon(Icons.add_a_photo_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Página 2',
            icon: Icon(Icons.airline_seat_recline_extra_sharp),
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
