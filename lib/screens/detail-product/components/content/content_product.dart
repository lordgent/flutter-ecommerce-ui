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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: Text(
                      price,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 233, 169, 126),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color.fromARGB(255, 233, 169, 126),
                                width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 227, 227, 227)
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
                              color: Color.fromARGB(255, 48, 48, 48),
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color.fromARGB(255, 233, 169, 126),
                                width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 227, 227, 227)
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
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 79, 79, 79),
                                  ),
                                ],
                              ),
                              Text(
                                "4.6",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 52, 52, 52)),
                              )
                            ],
                          ),
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
                    Container(
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                  child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 235, 235, 235),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 249, 249, 249)
                                          .withOpacity(0.2),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                    onPressed: () => {},
                                    icon: const Icon(
                                      Icons.person_2,
                                      color: Color.fromARGB(255, 75, 75, 75),
                                    )),
                              ))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
