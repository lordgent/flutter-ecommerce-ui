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
              "name": "Informa Aryana Sofa Fabric",
              "image": "assets/images/image${index + 1}.png",
              "price": "Rp ${index + 1}.000.000"
            }).toList();

    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "see all",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 226, 172, 8)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4.5,
                  children: List.generate(4, (index) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context)
                          .pushNamed(detail, arguments: myProducts[index]),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 227, 227, 227)
                                  .withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.all(6),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                    child: SizedBox(
                                  height: 149,
                                  width: 141,
                                  child: Image(
                                    image:
                                        AssetImage(myProducts[index]['image']),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                                Positioned(
                                    right: 1,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40)),
                                      ),
                                      height: 30,
                                      width: 30,
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.favorite_outline,
                                            color:
                                                Color.fromARGB(255, 95, 95, 95),
                                            size: 15,
                                          )),
                                    ))
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    myProducts[index]['name'],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 165, 165, 165),
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    myProducts[index]['price'],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 233, 169, 126),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
