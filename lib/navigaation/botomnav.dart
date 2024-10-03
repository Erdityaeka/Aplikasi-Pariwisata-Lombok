
import 'package:flutter/material.dart';
import 'package:pariwisata/pages/wisatalistscreen.dart';


class TombolNav extends StatefulWidget {
  TombolNav({Key? key});

  @override
  State<TombolNav> createState() => _TombolNavState();
}

class _TombolNavState extends State<TombolNav> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> listpage = <Widget>[
      const list(),
    ];

    final List<BottomNavigationBarItem> bottomNavBarItems =
        <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.star),
        label: 'Favorite',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ];

    final BottomNavigationBar bottomNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xff161329),
      items: bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      unselectedItemColor: const Color.fromARGB(136, 129, 128, 128),
      selectedItemColor: Colors.white,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      body: Center(
        child: listpage[_selectedTabIndex],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 3.0,
            ),
          ),
        ),
        child: bottomNavBar,
      ),
    );
  }
}