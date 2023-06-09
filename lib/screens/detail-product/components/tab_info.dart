import 'package:flutter/material.dart';

class TabInfo extends StatelessWidget {
  const TabInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3.5,
            decoration: const BoxDecoration(
                color: Color.fromARGB(62, 236, 182, 106),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            padding: const EdgeInsets.all(8),
            child: const Text(
              "Description",
              style: TextStyle(color: Color.fromARGB(255, 251, 164, 64)),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3.5,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6))),
            child: const Text(
              "Materials",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color.fromARGB(255, 185, 185, 185)),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3.5,
            padding: const EdgeInsets.all(8),
            child: const Text(
              "Reviews",
              style: TextStyle(color: Color.fromARGB(255, 185, 185, 185)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
