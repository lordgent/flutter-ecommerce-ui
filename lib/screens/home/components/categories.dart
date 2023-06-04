import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var products = [
    'assets/images/chair1.png',
    'assets/images/sofa.png',
    'assets/images/chair2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(13),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 232, 176, 8)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 6, right: 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color.fromARGB(255, 219, 219, 219)),
                        width: 135,
                        height: 56,
                        child: Image(
                          image: AssetImage(products[index]),
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
