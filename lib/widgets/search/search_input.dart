import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border:
                Border.all(color: const Color.fromARGB(255, 188, 188, 188))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Chair, desk, lamp, etc"),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 35,
                  color: Color.fromARGB(255, 65, 65, 65),
                ))
          ],
        ),
      ),
    );
  }
}
