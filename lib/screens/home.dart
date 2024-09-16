import 'package:flutter/material.dart';
import 'package:intern_project/screens/portfolio.dart';
import 'package:intern_project/widgets/bottom_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 1; // Move selectedIndex here

  final List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Portfolio(),
    Text('Input'),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
