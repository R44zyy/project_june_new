import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Splasssh(),));
}
class Splasssh extends StatelessWidget {
  const Splasssh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100,
        height: 80,
        child: Column(
          children: [
            Image.asset("assets/images/bibimbap.png"),
            Text("Fresh  Fruits",style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
    );
  }
}
