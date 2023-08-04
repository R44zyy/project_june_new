import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView2(),
  ));
}

class ListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView2"),
      ),
      body: ListView(
        children: List.generate( 100,
            (index) => const Card(
                  child: ListTile(
                    title: Text("Item 1"),
                    subtitle: Text("\$250"),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/green.jpg"),
                    ),
                  ),
                )),
      ),
    );
  }
}
