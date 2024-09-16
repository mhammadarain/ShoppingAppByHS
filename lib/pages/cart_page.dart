import 'package:flutter/material.dart';
import 'package:mart_app/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Cart".text.make(),
      ),
      body: Column(children: [
        _CartList().p32().expand(),
        const Divider(),
        _CartTotal(),
      ]),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return SizedBox(
      height: 80,
      child: Container(
        color: Color(0xffd7d6d6),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            "Total:".text.bold.blue900.xl2.make(),
            cart.totalPrice.text.xl4.blue900.make(),
            30.widthBox,
            ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: "Buying not Supported".text.make(),
                      ));
                    },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        // Change the color when the button is pressed
                        return Color(0xffd7d6d6); // Replace with your desired color
                      }
                      // Default color when the button is not pressed or hovered

                      return Color(0xff0d1662); // Replace with your desired color
                    },
                  ),
                ),
                    child: "Buy".text.make())
                .w24(context),
          ],
        ),
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.done),
              trailing: IconButton(
                icon: const Icon(Icons.remove_circle_outline),
                onPressed: () {
                  _cart.remove(_cart.items[index]);
                  setState(() {});
                },
              ),
              title: _cart.items[index].name.text.make(),
            ),
          );
  }
}
