import "package:flutter/material.dart";
import "package:mart_app/models/catalog.dart";

import "../widgets/drawer.dart";
import "../widgets/item_widget.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
