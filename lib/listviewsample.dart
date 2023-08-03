import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: ListView1(),
  ));
}

class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Sample"),
        ),
        body: ListView(
          children: [
            Center(
                child: Text(
              "Shop Here",
              style: GoogleFonts.satisfy(
                  fontSize: 50,
                  color: Colors.pink),
            )),
            const Card(
              color: Colors.orange,
              child: ListTile(
                title: Text("Shoe"),
                subtitle: Text("\$ 780"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i02.appmifile.com/417_operator_in/17/08/2022/0d6e11e0b3d93f29d2877c77b28d9102!800x800!85.jpg"),
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            const Card(
              child: ListTile(
                title: Text("Salwar"),
                subtitle: Text("\$ 1780"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3VX_Lr1q7xnM8pquqdrnOG2J5tOQFw8utfw&usqp=CAU"),
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            ListTile(
              title: const Text('Item3'),
              leading: Image.network(
                  "https://5.imimg.com/data5/WH/BT/AR/SELLER-1510182/school-bag-500x500.jpg"),
            )
          ],
        ));
  }
}
