import 'package:covid_app/pages/settingspage.dart';
import 'package:covid_app/pages/trackerpage.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/pages/homepage.dart';
import 'package:covid_app/pages/infopage.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  int _currentIndex = 0;

  final tabs = [
    Home(),
    Info(),
    Tracker(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: Color.fromRGBO(76, 20, 168, 1.0), size: 30.0),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info,
                color: Color.fromRGBO(76, 20, 168, 1.0), size: 30.0),
            title: Text(
              'Info',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart,
                color: Color.fromRGBO(76, 20, 168, 1.0), size: 30.0),
            title: Text(
              'Tracker',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: Color.fromRGBO(76, 20, 168, 1.0), size: 30.0),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
