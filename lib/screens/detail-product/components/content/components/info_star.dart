import 'package:flutter/material.dart';

class InfoStar extends StatelessWidget {
  const InfoStar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          "4.8",
          style: TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 53, 53, 53),
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
