import 'package:flutter/material.dart';

class ButtonAddCart extends StatelessWidget {
  const ButtonAddCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 0,
        left: 0,
        bottom: 0,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Color.fromARGB(55, 233, 233, 233),
                width: 6,
              ),
            ),
          ),
          height: MediaQuery.of(context).size.height / 7.5,
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(225, 199, 199, 199)),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      color: Color.fromARGB(224, 160, 160, 160),
                      size: 28,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 49, 49, 49),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Add to bag",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
