import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: const Text("StackEx"),
        ),
        body: Center(
          child: Stack(children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1691443297137-68818fe7bce9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80"))),
            ),
            Positioned(
                left: 50,
                top: 80,
                child: Row(
                  children: [
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.box,
                          size: 40,
                          color: Colors.white70,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        ///to rotate the icon by 90 degree
                        Transform.rotate(
                          angle: 90 * pi / 180,
                          child: const FaIcon(
                            FontAwesomeIcons.wifi,
                            size: 40,
                            color: Colors.white70,
                          ),
                        )
                      ],
                    ),
                  ],
                )),
            Positioned(
              right: 20,
              top: 10,
              child: Text(
                "Fi",
                style: GoogleFonts.ptSerif(
                    color: Colors.white70,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ));
  }
}
