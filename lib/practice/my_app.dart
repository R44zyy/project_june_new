import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome to my app ",style: TextStyle(fontStyle:FontStyle.italic,color: Colors.black),),
        backgroundColor: Colors.greenAccent,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.black,),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo),color: Colors.black),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined),color: Colors.black),],
        shape: RoundedRectangleBorder(borderRadius:
        BorderRadius.vertical(bottom: Radius.circular(30))),
        elevation: 20,
     
      ),
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(30),
          alignment: Alignment.center,
          child: Text("hello ",style: TextStyle(fontSize: 60,color: Colors.black,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,letterSpacing: 10,
              shadows: [
                Shadow(
                  color: Colors.black26
                )
              ]
          ),
          ),
          color: Colors.redAccent,
        ),
      )

    );
  }
}
