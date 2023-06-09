import 'package:ecommerce_ui/screens/detail-product/components/content/components/info_price.dart';
import 'package:ecommerce_ui/screens/detail-product/components/content/components/info_rating.dart';
import 'package:ecommerce_ui/screens/detail-product/components/content/components/info_star.dart';
import 'package:ecommerce_ui/screens/detail-product/components/tab_info.dart';
import 'package:ecommerce_ui/screens/home/components/product.dart';
import 'package:flutter/material.dart';

class ContentProduct extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final int total;
  final Function decrement;
  final Function increment;

  const ContentProduct({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.decrement,
    required this.increment,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 3.2,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.8,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.4,
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 37, 37, 37)),
                ),
              ),
              const SizedBox(height: 10),
              InfoPrice(
                  name: name,
                  price: price.toString(),
                  decrement: decrement,
                  increment: increment,
                  total: total),
              const SizedBox(height: 20),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(138, 246, 246, 246),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 16, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InfoStar(),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "98 Reviews",
                            style: TextStyle(
                                color: Color.fromARGB(255, 200, 200, 200),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const InfoRating(),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(55, 233, 233, 233),
                      width: 6,
                    ),
                  ),
                ),
                height: MediaQuery.of(context).size.height / 3.4,
                child: Column(
                  children: [
                    const TabInfo(),
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        description,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              const Products(
                title: "Similar products",
              )
            ],
          ),
        ),
      ),
    );
  }
}
