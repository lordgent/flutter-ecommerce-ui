import 'package:ecommerce_ui/screens/home/components/categories.dart';
import 'package:ecommerce_ui/screens/home/components/product.dart';
import 'package:ecommerce_ui/screens/home/components/rooms.dart';
import 'package:ecommerce_ui/widgets/bottom-tab/bottom_tab.dart';
import 'package:ecommerce_ui/widgets/search/search_input.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomTab(),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                height: 160,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 252, 252),
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.only(
                    top: 14, left: 12, right: 12, bottom: 12),
                child: const Image(
                  image: AssetImage("assets/images/banner.png"),
                  fit: BoxFit.cover,
                ),
              ),
              const Products(),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 252, 252),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(12),
                child: const SizedBox(
                  width: 400,
                  height: 131,
                  child: Image(
                    image: AssetImage("assets/images/banner2.png"),
                    fit: BoxFit.cover,
                    width: 127,
                    height: 195,
                  ),
                ),
              ),
              const RoomCategories()
            ],
          ),
        ),
      ),
    );
  }
}
