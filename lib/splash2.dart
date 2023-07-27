import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Splash2()));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// to set background color way 1
      backgroundColor: Colors.black,
      body: Container(
        /// to set background color way 2
      decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.bottomLeft,end: Alignment.topRight,
        //         colors: [
        //   Colors.green,
        //   Colors.white,
        //   Colors.green,
        // ]),
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage("assets/images/green.jpg"))
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(Icons.cake,size: 80,color: Colors.green,),
              Image.asset(
                "assets/icons/alience.png",
                height: 200,
                width: 200,
              ),
              const Text(
                "My Application",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
