import 'package:flutter/material.dart';
import 'package:public_transport_app/constants.dart';
import 'package:public_transport_app/screens/home_screen.dart';
import 'package:public_transport_app/screens/map_screen.dart';
import 'package:public_transport_app/screens/profile_screen.dart';

void main() => runApp(MaterialApp(
      home: Main(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OpenSans'),
    ));

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;

  final List<Widget> _screens = [Home(), Profile(), MyMap()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMoonStones,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedFontSize: 0,
        elevation: 0.0,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Image.asset('assets/icons/home_colored.png', width: 25)
                : Image.asset('assets/icons/home.png', width: 25),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Image.asset('assets/icons/profile_colored.png', width: 20)
                : Image.asset('assets/icons/profile.png', width: 20),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? Image.asset('assets/icons/map_colored.png', width: 20)
                : Image.asset('assets/icons/map.png', width: 20),
            label: '',
          ),
        ],
      ),
    );
  }
}
