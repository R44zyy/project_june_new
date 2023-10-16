import 'package:flutter/material.dart';

class Tourist extends StatefulWidget {
  const Tourist({super.key});

  @override
  State<Tourist> createState() => _TouristState();
}

class _TouristState extends State<Tourist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("hello")),
    );
  }
}
