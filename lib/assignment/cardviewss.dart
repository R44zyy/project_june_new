import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Card1(),));
}

class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card"),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
        backgroundColor: Colors.greenAccent,
      ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 20,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("R44zyy"),
                        subtitle: Text("1 hr ago"),
                        leading: CircleAvatar(backgroundImage: AssetImage("assets/images/raazi.jpeg"),

                        ),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),

                      ),
                      Image.asset("assets/images/raazyy1.jpg"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          FaIcon(FontAwesomeIcons.heart),
                          SizedBox(width: 5),

                          FaIcon(FontAwesomeIcons.comment),
                          SizedBox(width: 5),

                          FaIcon(FontAwesomeIcons.share),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Liked by others"),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("R44zyy"),
                        subtitle: Text("3 days ago"),
                        leading: CircleAvatar(backgroundImage: AssetImage("assets/images/raazi.jpeg"),

                        ),
                        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),

                      ),
                      Image.asset("assets/images/razyy.jpg"),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 5),

                          FaIcon(FontAwesomeIcons.heart),
                          SizedBox(width: 5),

                          FaIcon(FontAwesomeIcons.comment),
                          SizedBox(width: 5),
                          FaIcon(FontAwesomeIcons.share),
                          SizedBox(width: 10),
                          Text("Liked by others")

                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ) ,
    );
  }
}
