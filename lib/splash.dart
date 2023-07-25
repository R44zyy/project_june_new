import 'package:flutter/material.dart';

void main() {
  //runApp -> attach our widget tree to the UI
  runApp(MaterialApp( // default theme of our app
    home: SplashPage(), // initial page to be launched
  ));
}
// stateless means this page does not undergo any statechanges
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  // BuildContext locate widgets on the widget tree
    return Scaffold(    //our page outline
      appBar: AppBar(title: Text("My Splash Page")),
    );
  }
}
