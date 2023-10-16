import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Register4(),));
}

class Register4 extends StatelessWidget {
  const Register4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       children: [
         Center(
           child: Container(height: 200,width: 200,
             decoration: BoxDecoration(
               image: DecorationImage(image: NetworkImage("https://wallpapers.com/images/high/pastel-sky-flying-plane-background-portrait-28jp4pt91pyfg8dq.we"),
                   fit:BoxFit.fill ),

             ),
             
           ),

         ),

         Positioned(top: 100,left: 100,
             child: Text("hello",style: TextStyle(fontWeight: FontWeight.bold),))
       ],
     ), 
      
      
    );
  }
}
