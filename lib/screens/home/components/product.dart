import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts = List.generate(
        4,
        (index) => {
              "id": index,
              "name": "Product ${index + 1}",
              "image": "assets/images/image${index + 1}.png"
            }).toList();

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
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
          padding: const EdgeInsets.only(left: 12, right: 12),
          height: MediaQuery.of(context).size.height / 1.6,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 4 / 5,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15),
              itemCount: myProducts.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 252, 252, 252),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: const Color.fromARGB(255, 233, 233, 233),
                          width: 1.0,
                          style: BorderStyle.solid),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 222, 222, 222),
                          blurRadius: 0.2,
                          spreadRadius: 0.4,
                        ), //BoxShadow
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 141,
                        height: 151,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 252, 252, 252),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.only(top: 12),
                        child: Image(
                          image: AssetImage(myProducts[index]["image"]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
