import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: MyProducts(),));
}
class MyProducts extends StatelessWidget {

  var images=["assets/images/addiddas.jpeg","assets/images/sunglass.jpeg","assets/images/belt.jpeg",
    "assets/images/grdn stnd.jpeg","assets/images/earrings.jpeg","assets/images/socks.jpeg"];

  var name=["Adidas Bags"," Sunglass","Van Heusen Belts","Garden Stands","Earrings","Puma Socks"];
  var price=["4000","1000","500","700","50","200"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          actions:const [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.line_style),
            SizedBox(width: 10),],
          title: Text("Products"),),


        body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            childrenDelegate: SliverChildListDelegate(
                List.generate(6, (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 115,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image:DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(images[index]),
                                )
                            ),
                          ),
                          Text(name[index],style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("\$${price[index]}"),
                        ],
                      ),
                    ),
                  ),
                ),
                ))
        ));

  }
}
