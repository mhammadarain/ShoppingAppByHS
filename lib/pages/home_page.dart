import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:mart_app/models/catalog.dart";
import "../widgets/drawer.dart";
import 'dart:convert';
import "../widgets/item_widget.dart";

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
    var catalogJson = await rootBundle.loadString("assets/files/data.json");
    print(catalogJson);
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.white,
          title: Text("Shopping App"),
        ),
        drawer: MyDrawer(),
        body: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: CatalogModel.items[index]);
            }));
  }
}
