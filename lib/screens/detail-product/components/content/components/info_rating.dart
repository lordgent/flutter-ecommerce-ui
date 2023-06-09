import 'package:flutter/material.dart';

class InfoRating extends StatelessWidget {
  const InfoRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            Positioned(
                child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 236, 236, 236), width: 1),
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 249, 249, 249)
                        .withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.person_2,
                    color: Color.fromARGB(255, 62, 62, 62),
                  )),
            )),
            Positioned(
                child: Container(
              margin: const EdgeInsets.only(left: 25),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 236, 236, 236), width: 1),
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 249, 249, 249)
                        .withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.person_2,
                    color: Color.fromARGB(255, 62, 62, 62),
                  )),
            )),
            Positioned(
                child: Container(
              margin: const EdgeInsets.only(left: 50),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 236, 236, 236), width: 1),
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 249, 249, 249)
                        .withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.person_2,
                    color: Color.fromARGB(255, 62, 62, 62),
                  )),
            )),
            Positioned(
                child: Container(
              margin: const EdgeInsets.only(left: 75),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 236, 236, 236), width: 1),
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 249, 249, 249)
                        .withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: IconButton(
                  onPressed: () => {},
                  icon: const Icon(
                    Icons.person_2,
                    color: Color.fromARGB(255, 62, 62, 62),
                  )),
            ))
          ],
        )
      ],
    );
  }
}
