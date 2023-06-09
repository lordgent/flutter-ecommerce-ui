import 'package:ecommerce_ui/routes/routes.dart';
import 'package:flutter/material.dart';

class BottomTab extends StatefulWidget {
  const BottomTab({super.key});

  @override
  State<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (_selectedIndex == 0) {
      setState(() {
        _selectedIndex = index;
      });
      Navigator.of(context).pushNamed(home);
    } else if (_selectedIndex == 1) {
      setState(() {
        _selectedIndex = index;
      });
      Navigator.of(context).pushNamed(home);
    }
    if (_selectedIndex == 2) {
      setState(() {
        _selectedIndex = index;
      });
      Navigator.of(context).pushNamed(cart);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_rounded),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Like',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2_rounded),
          label: 'Account',
        )
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: const Color.fromARGB(255, 210, 210, 210),
      selectedItemColor: const Color.fromARGB(255, 233, 169, 126),
      onTap: _onItemTapped,
    );
  }
}
