import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridCustom(),));
}
class GridCustom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Custom"),
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          childrenDelegate: SliverChildListDelegate(
            List.generate(12, (index) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 180,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://plus.unsplash.com/premium_photo-1690267599168-98dc22a96f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=800&q=60")
                      )
                    ),
                  ),
                  Text("Item 1"),
                  Text("\$290")
                ],
              ),
            ))
          )),
    );
  }
}
