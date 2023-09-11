import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:mart_app/models/cart.dart";
import "package:mart_app/models/catalog.dart";
import "package:mart_app/pages/home_detail_page.dart";
import "package:mart_app/utils/routes.dart";
// import "package:mart_app/widgets/themes.dart";
// import "../widgets/drawer.dart";
import 'dart:convert';
// import "../widgets/item_widget.dart";
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/files/data.json");
    // print(catalogJson);
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.card_travel_sharp),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              if (CatalogModel.items.isNotEmpty)
                const CatalogList().expand()
              else
                const Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: Image.network(catalog.image)
              .box
              .p1
              .roundedSM
              .white
              .make()
              .p12()
              .w32(context),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.xl2
                .color(const Color.fromARGB(255, 14, 2, 85))
                .bold
                .make()
                .py8(),
            catalog.desc.text.xl.textStyle(context.captionStyle).make(),
            const SizedBox(
              height: 10,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                _AddToCart(catalog: catalog)
              ],
            ).pOnly(right: 16)
          ],
        ))
      ],
    )).blue100.square(150).roundedSM.make().py16();
  }
}

class _AddToCart extends StatefulWidget {
  final Item catalog;
  const _AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          isAdded = isAdded.toggle();
          final catalog = CatalogModel();
          final _cart = CartModel();
          _cart.catalog = catalog;
          _cart.add(widget.catalog);
          setState(() {});
        },
        child: isAdded ? Icon(Icons.done) : "Add to Cart".text.bold.make());
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Apple Store".text.xl5.bold.make(),
        "Trending Products".text.xl.make(),
      ],
    );
  }
}
