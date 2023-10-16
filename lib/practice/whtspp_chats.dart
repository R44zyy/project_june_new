import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Whatsapp(),));
}

class Whatsapp extends StatelessWidget {


  var name=["zaara","Akash","Albin","Albert","Sharon","Albert","Abhinav","Johns","Don","Rohit"];
  var image=["assets/images/zaraa.jpg",
    "assets/images/akshh.jpg",
    "assets/images/mixed-fruits splash.jpeg",
    "assets/images/orange.jpg",
    "assets/images/strawberrynew.jpg",
    "assets/images/loginsignup logo.png",
    "assets/images/mixed-fruits splash.jpeg",
    "assets/images/orange.jpg",
    "assets/images/strawberrynew.jpg",
    "assets/images/loginsignup logo.png"];

  var msgs=["i miss youu",
    "dee edele",
    "Good",
    "Haha",
    "Fine",
    "Hm",
    "Bye",
    "Great",
    "Super",
    "Wow",];

  var time=["12.30 PM","11.20 PM","10.36 PM","10.30 PM","10.20 PM","09.30 PM","09.20 PM","08.30 PM","08.10 PM","07.30 PM"];
  var msgno=["2","1","5","6","1","3","4","2","1","1"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.teal,
      //   title: Text("WhatsApp"),
      // actions:  [
      //   const Icon(Icons.camera_alt_outlined),
      //   const SizedBox(width: 20,),
      //   const Icon(Icons.search),
      //   const SizedBox(width: 20,),
      //
      //   PopupMenuButton(itemBuilder: (context){
      //
      //   return[
      //     const PopupMenuItem(child: Text("New group")),
      //     const PopupMenuItem(child: Text("New Broadcast")),
      //     const PopupMenuItem(child: Text("Linked devices")),
      //     const PopupMenuItem(child: Text("Starred messages")),
      //     const PopupMenuItem(child: Text("Payments")),
      //     const PopupMenuItem(child: Text("Settings")),
      //   ];
      //   })
      // ],
      // ),
      body: ListView(
        children: List.generate(10, (index) => Card(
          child: ListTile(
            title: Text(name[index]),
            subtitle: Text(msgs[index],),textColor: Colors.black,titleTextStyle: TextStyle(fontWeight: FontWeight.w900),
            trailing:  Wrap(
                direction: Axis.vertical,
                children: [
                  Text(time[index]),
                  SizedBox(width: 10),

                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(minRadius: 6,maxRadius: 12,backgroundColor: Colors.teal,
                      child: Text(msgno[index]),),
                  )
                ]
            ),

            leading: CircleAvatar(
              backgroundImage: AssetImage(image[index]),
            ),
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.teal,
        onPressed: (){},

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        mini: true,
        elevation: 2.0,
        child: Icon(Icons.message),),
    );
  }
}