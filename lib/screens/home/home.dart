import 'package:ecommerce_ui/screens/home/components/categories.dart';
import 'package:ecommerce_ui/screens/home/components/product.dart';
import 'package:ecommerce_ui/widgets/search/search_input.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
        selectedItemColor: const Color.fromARGB(255, 239, 181, 6),
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "Explore What Your Home Needs",
                      style: TextStyle(
                          fontSize: 28,
                          color: Color.fromARGB(255, 45, 45, 45),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        size: 35,
                        color: Color.fromARGB(255, 239, 181, 6),
                      )),
                ],
              ),
            ),
            const SearchInput(),
            const Categories(),
            Container(
              width: 400,
              height: 122,
              margin: const EdgeInsets.only(top: 14, left: 12, right: 12),
              child: const Image(
                image: AssetImage("assets/images/banner2.png"),
                fit: BoxFit.cover,
              ),
            ),
            const Products()
          ],
        ),
      ),
    );
  }
}
