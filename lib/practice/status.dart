import 'package:flutter/material.dart';

class WStatus extends StatelessWidget {

  var sname=["My status","George","Diya","Alex","Alvin","Arya","Ebin","Milan","Diffin",];
  var stime=["20 minutes ago","5 monutes ago","Today,9:10 AM","Today, 8:50 AM","Yesterday, 11:45 PM","Yesterday, 10:28 PM",
    "Yesterday, 8:23 PM","Yesterday, 7:28 PM","Yesterday, 7:22 PM",];
  var simage= [
    "https://images.unsplash.com/photo-1692637636139-ea1d71a94d0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://plus.unsplash.com/premium_photo-1691948105877-766dd9604d57?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1905&q=80",
    "https://images.unsplash.com/photo-1692513873777-40ec199fc071?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
    "https://images.unsplash.com/photo-1692071099909-49bedd88163a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80",
    "https://plus.unsplash.com/premium_photo-1689797430700-ebb98b385be4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2041&q=80",
    "https://images.unsplash.com/photo-1692260122105-28c26fc3c882?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80"
        "https://images.unsplash.com/photo-1689604018071-f609ea651d59?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80",
    "https://images.unsplash.com/photo-1687993319555-f608d8992f9c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1932&q=80",
    "https://images.unsplash.com/photo-1597306957833-433de12c3af6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: ListView(
          children: List.generate(8, (index)=> Card(
            child: ListTile(
              title: Text(sname[index]),
              subtitle: Text(stime[index]),

              leading: CircleAvatar(
                backgroundImage: NetworkImage(simage[index]),
              ),

            ),
          )
          ),
        ),
      ),



      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(backgroundColor: Colors.grey,
              onPressed: (){},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              mini: true,
              child: Icon(Icons.edit)),


          SizedBox(height: 15,),
          FloatingActionButton(backgroundColor: Colors.teal,
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            mini: true,
            elevation: 2.0,
            child: Icon(Icons.photo_camera),),

        ],
      ),

    );

  }
}