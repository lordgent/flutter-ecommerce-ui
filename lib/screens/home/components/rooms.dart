import 'package:flutter/material.dart';

class RoomCategories extends StatefulWidget {
  const RoomCategories({super.key});

  @override
  State<RoomCategories> createState() => _RoomCategoriesState();
}

class _RoomCategoriesState extends State<RoomCategories> {
  var products = [
    'assets/images/room1.png',
    'assets/images/room2.png',
    'assets/images/room3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(13),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rooms",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Furniture for every corners in your home",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 202, 202, 202),
                        fontWeight: FontWeight.w400),
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
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 6, right: 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 219, 219, 219)),
                        width: 127,
                        height: 195,
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
