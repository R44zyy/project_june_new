import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("StackEx"),
        ),
        body: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Positioned(
              left: 80,
              top: 20,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
            ),
            Positioned(
              left: 50,
              right: 50,
              bottom: 50,
              top: 80,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.purple,
              ),
            )
          ],
        ));
  }
}
