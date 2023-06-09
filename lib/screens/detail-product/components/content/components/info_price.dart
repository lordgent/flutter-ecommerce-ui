import 'package:flutter/material.dart';

class InfoPrice extends StatelessWidget {
  final String name;
  final String price;
  final int total;
  final Function decrement;
  final Function increment;
  const InfoPrice({
    super.key,
    required this.name,
    required this.price,
    required this.decrement,
    required this.increment,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.4,
          child: Text(
            "Rp${price}",
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
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
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
                      color: Color.fromARGB(255, 234, 159, 109),
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
                      color: const Color.fromARGB(255, 234, 159, 109),
                      width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
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
    );
  }
}
