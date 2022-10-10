import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/view/movies_detail.dart';
import 'package:flutter_movies_app/view/movies_home.dart';

import 'package:flutter_movies_app/view/movies_info_sl.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> _widgetOptions = <Widget>[
    MoviesInfoTwo(),
    MoviesHome(),
    MoviesDetail(),
    MoviesInfoTwo(),
  ];

  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoviesConst.colorgrey,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        backgroundColor: Color.fromARGB(255, 35, 33, 33),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
