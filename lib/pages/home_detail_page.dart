import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          catalog.price.text.bold.xl3.red800.make(),
          ElevatedButton(onPressed: () {}, child: "Buy Now".text.bold.make())
              .wh(110, 35)
        ],
      ).p24(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: 220,
              alignment: Alignment.center,
              child: Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image)),
            ).p24(),
            Expanded(
                child: VxArc(
              height: 20.0,
              edge: VxEdge.top,
              arcType: VxArcType.convey,
              child: Container(
                color: const Color.fromARGB(255, 229, 229, 226),
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(const Color.fromARGB(255, 14, 2, 85))
                        .bold
                        .make()
                        .py8(),
                    catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                    10.heightBox,
                    SingleChildScrollView(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child:
                            "The latest Apple Pro 16 M2 Max Chip 12 Cores CPU 38 Cores GPU 96GB RAM 2TB SSD GREY  which was recently updated on September 2023."
                                .text
                                .bold
                                .xl
                                .make()
                                .p16(),
                      ),
                    )
                  ],
                ).py32(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
