import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: ContactBook(),));
}
class ContactBook extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Contacts"),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text("Akash"),
              subtitle: Text("8765453421"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(backgroundColor: Colors.blue,
                child: Icon(Icons.person,color: Colors.white),),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Mahadev"),
              subtitle: Text("9768953902"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(backgroundColor: Colors.green,
                child: Icon(Icons.person,color: Colors.white),),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Akshay"),
              subtitle: Text("6756785908"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(backgroundColor: Colors.yellowAccent,
                child: Icon(Icons.person,color: Colors.white),),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Vishnu"),
              subtitle: Text("7856785908"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(backgroundColor: Colors.orange,
                child: Icon(Icons.person,color: Colors.white),),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Deepa"),
              subtitle: Text("8856445909"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(backgroundColor: Colors.purple,
                child: Icon(Icons.person,color: Colors.white),),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Ashkar"),
              subtitle: Text("669785922"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(backgroundColor: Colors.pink,
                child: Icon(Icons.person,color: Colors.white),),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("George"),
              subtitle: Text("709785939"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(backgroundColor: Colors.pink,
                child: Icon(Icons.person,color: Colors.white),),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Sachu"),
              subtitle: Text("809785920"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(backgroundColor: Colors.brown,
                child: Icon(Icons.person,color: Colors.white),),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Aromal"),
              subtitle: Text("909785910"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(backgroundColor: Colors.orangeAccent,
                child: Icon(Icons.person,color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
