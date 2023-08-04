import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView2(),
  ));
}

class ListView2 extends StatelessWidget {
  var name = [
    "Food 1",
    "Food 2",
    "Food 3",
    "Food 4",
    "Food 5",
    "Food 6",
    "Food 7",
    "Food 8",
    "Food 9",
    "Food 10"
  ];

  var image = [
    "assets/images/donut.png",
    "assets/images/hamburger.png",
    "assets/images/pizza.png",
    "assets/images/ramen.png",
    "assets/images/salad.png",
    "assets/images/apple.png",
    "assets/images/grapes.png",
    "assets/images/bibimbap.png",
    "assets/images/donut.png",
    "assets/images/hamburger.png",
  ];
  var price = [130, 200, 100, 30, 470, 270, 340, 120, 150, 210];
  var colors = [
    Colors.purple,
    Colors.indigo,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.yellow,
    Colors.orange,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("ListView2"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 15,),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("Privacy")),
              PopupMenuItem(child: Text("BroadCast")),
            ];
          })
        ],
      ),
      body: ListView(
        children: List.generate(
            10,
            (index) => Card(
             // color: colors[index],
                  child: ListTile(
                    title: Text(name[index]),
                    subtitle: Text("\$ ${price[index]}"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                    ),
                    trailing: const Wrap(
                      direction: Axis.vertical,
                      children: [
                        Text("1.20"),
                        SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          minRadius: 8,
                          maxRadius: 10,
                          backgroundColor: Colors.green,
                          child: Text("2"),
                        )
                      ],
                    ),

                    // Row(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     Icon(Icons.favorite_border),
                    //     Icon(Icons.shopping_cart),
                    //   ],
                    // ),
                  ),
                )),
      ),
    );
  }
}
