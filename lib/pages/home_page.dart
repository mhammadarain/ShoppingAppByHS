import "package:flutter/material.dart";

import "../widgets/drawer.dart";

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
      body: Container(
        child: Center(child: Text("Hammad Arain Software Engineer")),
      ),
    );
  }
}
