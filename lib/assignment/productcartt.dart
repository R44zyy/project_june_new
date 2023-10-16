import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Product(),));
}
class Product extends StatelessWidget {

var image=[

 "assets/images/apple.png",
  'assets/images/mango.png',
  "assets/images/bananas.png",
  "assets/images/grapes.png",
  "assets/images/pineapple.png",
  "assets/images/salad.png"
  ];

  var name=["Apple","Mango","Banana","Grapes","Watermelon","Kiwi","Orange",];
  var unit=["Kg","Doz","Doz","Kg","Kg","Pc","Doz"];
  var price=["20", "30","10","8","25","40","15"];


  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar( backgroundColor: Colors.blue,
  actions: [
  Icon(CupertinoIcons.cart),
  SizedBox(width: 40,)
  ],
  title: Center(child: Text('Product List')),
  ),

  body: ListView.builder(
  itemCount: image.length,
  itemBuilder: (context,index){
  return Card(

  color: Colors.grey,
  child: Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
  SizedBox(width: 30,),
  Image.asset(image[index],width: 50,height: 70, ),
  SizedBox(width: 20,),
  Expanded(
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Text('Name : ${name[index]}',style: TextStyle(fontWeight: FontWeight.bold),),
  Text('Unit : ${unit[index]} ',style: TextStyle(fontWeight: FontWeight.bold),),
  Text('Price: \$${price[index]} ',style: TextStyle(fontWeight: FontWeight.bold),)
  ],
  )
  ),
  Padding(
  padding: EdgeInsets.only(right: 10),
  child: Container(
  height: 40,
  child: Card(
  color: Colors.black,
  child: Center(
  child: Text('Add to Cart',style: TextStyle(color: Colors.white),)),
  ),
  ),
  ),
  ],
  )
  );

  }) ,
  );
  }
}
