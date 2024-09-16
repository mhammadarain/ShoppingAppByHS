import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';
import '../models/cart.dart';
import '../models/catalog.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    // bool isInCart = _cart.item.contains(widget.catalog) ?? false;
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            isInCart = isInCart.toggle();
            final catalog = CatalogModel();

            _cart.catalog = catalog;
            _cart.add(widget.catalog);
            setState(() {});
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                // Change the color when the button is pressed
                return Color(0xff0d1662); // Replace with your desired color
              }
              // Default color when the button is not pressed or hovered
              return Color(0xffd7d6d6); // Replace with your desired color
            },
          ),
        ),
        child: isInCart ? const Icon(Icons.done,size: 25,color: Color(0xff0d1662),)
            : const Icon(Icons.card_travel_rounded,size: 25,color: Color(0xff0d1662),));
  }
}
