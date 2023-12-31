import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Instaaa(),
  ));
}
class Instaaa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) => const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepOrange,
                    Colors.pink,
                    Colors.purple,
                  ],
                ).createShader(bounds),
            child: FaIcon(FontAwesomeIcons.instagram,size: 80,)),
      ),
    );
  }
}
