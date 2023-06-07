import 'package:flutter/material.dart';

class PhotoProduct extends StatelessWidget {
  final String imageUrl;

  const PhotoProduct({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      padding: const EdgeInsets.only(top: 38, left: 12, right: 12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 226, 226),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 227, 227, 227).withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 75, 75, 75),
                )),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 227, 227, 227).withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
                onPressed: () => {},
                icon: const Icon(
                  Icons.share,
                  color: Color.fromARGB(255, 75, 75, 75),
                )),
          )
        ],
      ),
    );
  }
}
