import 'package:flutter/material.dart';

class ContentProduct extends StatelessWidget {
  final String name;
  final String price;
  final int total;
  final Function decrement;
  final Function increment;

  const ContentProduct({
    super.key,
    required this.name,
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
                width: MediaQuery.of(context).size.width / 1.6,
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 37, 37, 37)),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Text(
                        price,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 233, 169, 126),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 233, 169, 126),
                                  width: 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 227, 227, 227)
                                          .withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: IconButton(
                                onPressed: () => increment(),
                                icon: const Icon(
                                  Icons.add,
                                  color: Color.fromARGB(255, 233, 169, 126),
                                  size: 13,
                                )),
                          ),
                          Text(
                            total.toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 233, 169, 126),
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 233, 169, 126),
                                  width: 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 227, 227, 227)
                                          .withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: IconButton(
                                onPressed: () => decrement(),
                                icon: const Icon(
                                  Icons.remove,
                                  color: Color.fromARGB(255, 233, 169, 126),
                                  size: 13,
                                )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 37, 37, 37)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
