import 'package:ecommerce_ui/screens/cart/cart.dart';
import 'package:ecommerce_ui/screens/detail-product/detail_product.dart';
import 'package:ecommerce_ui/screens/home/home.dart';
import 'package:flutter/material.dart';

const String home = "/";
const String detail = "/detailproduct";
const String cart = "/cart";

final Map<String, WidgetBuilder> routes = {
  home: (context) => const Home(),
    detail: (context) {
    final Map<String, dynamic> product =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return DetailProduct(product: product);
  },

  cart: (context) => const Cart(),
};
