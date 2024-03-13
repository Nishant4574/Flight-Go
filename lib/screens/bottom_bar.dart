import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/search.dart';
import 'package:flutter_application_1/screens/ticket_screen.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex = 0;
  static final List<Widget> _WidgetOptions = <Widget>[
    Homescreen(),
    searchscreen(),
  ];
  void _onitemtap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _WidgetOptions[_selectedIndex]), //calling the widgets
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onitemtap,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Colors.amber.shade400,
          type: BottomNavigationBarType
              .fixed, //help us not to moving the bootom icon
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
          ]),
    );
  }
}
//34min