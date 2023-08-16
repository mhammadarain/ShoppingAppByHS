import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
      ),
      drawer: Drawer(),
      body: Container(
        child: Text("Hammad Arain Software Engineer"),
      ),
    );
  }
}
