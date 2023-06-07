import 'package:ecommerce_ui/screens/detail-product/components/button_add_cart.dart';
import 'package:ecommerce_ui/screens/detail-product/components/content_product.dart';
import 'package:ecommerce_ui/screens/detail-product/components/photo_product.dart';
import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  final Map<String, dynamic> product;

  const DetailProduct({super.key, required this.product});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int counter = 1;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (counter != 1) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> product = widget.product;
    final String? imageUrl = product['image'];
    final String? name = product['name'];
    final String? price = product['price'];

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                  ),
                  PhotoProduct(imageUrl: imageUrl ?? ''),
                  ContentProduct(
                    name: name ?? '',
                    price: price ?? '',
                    decrement: () => _decrementCounter(),
                    increment: () => _incrementCounter(),
                    total: counter,
                  ),
                  const ButtonAddCart()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
