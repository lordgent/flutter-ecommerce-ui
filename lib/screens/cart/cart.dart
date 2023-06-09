import 'package:ecommerce_ui/routes/routes.dart';
import 'package:ecommerce_ui/store/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(home);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 28,
                  )),
              Container(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: const Text(
                  "My Shooping Bag",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 79, 79, 79)),
                ),
              ),
              const CartList()
            ],
          ),
          Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(12),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                      color: Color.fromARGB(55, 233, 233, 233),
                      width: 6,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Total",
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 157, 82),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Text("Rp ${cartProvider.totalPrice.toString()}",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 179, 179, 179),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 49, 49, 49),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      width: MediaQuery.of(context).size.width / 2,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Proceed to checkout",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);

    return Container(
      padding: const EdgeInsets.all(6),
      child: Column(
        children: [
          cartProvider.cartItems.isNotEmpty
              ? ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: cartProvider.cartItems.map((value) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 227, 227, 227)
                                .withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image(
                              image: AssetImage(value.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  value.name,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 57, 57, 57)),
                                ),
                                Text(
                                  "Qty: ${value.qty.toString()}",
                                  style: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 159, 159, 159)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                )
              : Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                    "Oopss.. Cart Not Found",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 204, 204, 204),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
        ],
      ),
    );
  }
}
