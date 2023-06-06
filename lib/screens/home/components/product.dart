import 'package:ecommerce_ui/routes/routes.dart';
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
              "name": "Norrviken Chair and Table lorem",
              "image": "assets/images/image${index + 1}.png",
              "price": "Rp${index + 1}00.000"
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
          height: MediaQuery.of(context).size.height / 1.5,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: (3 / 4.3)),
              itemCount: myProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).pushNamed(detail),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 227, 227, 227)
                              .withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.all(6),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 149,
                          width: 141,
                          child: Image(
                            image: AssetImage(myProducts[index]['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                myProducts[index]['name'],
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 165, 165, 165),
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                myProducts[index]['price'],
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 73, 73, 73),
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
