
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_june2/practice/status.dart';
import 'package:project_june2/practice/wcalls.dart';
import 'package:project_june2/practice/whatsapp_community.dart';
import 'package:project_june2/practice/whtspp_chats.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: WhatsAppTab(),));
}

class WhatsAppTab extends StatelessWidget {
  const WhatsAppTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text("WhatsApp"),
              actions: [
                Icon(Icons.camera_alt),
                SizedBox(width: 10,),
                Icon(Icons.search),

                PopupMenuButton(itemBuilder: (context){
                  return[
                    PopupMenuItem(child: Text("New group")),
                    PopupMenuItem(child: Text("New Broadcast")),
                    PopupMenuItem(child: Text("Linked devices")),
                    PopupMenuItem(child: Text("Starred messages")),
                    PopupMenuItem(child: Text("Payments")),
                    PopupMenuItem(child: Text("Settings")),

                  ];
                })
              ],
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  SizedBox(width: MediaQuery.of(context).size.width*.1,

                    child: Icon(Icons.groups,color: Colors.white,),),

                  SizedBox(
                      width: MediaQuery.of(context).size.width*3,
                      child: Text("Chats")),

                  SizedBox(
                      width: MediaQuery.of(context).size.width*3,
                      child: Text("Status")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*3,
                      child: Text("Calls"))

                ],
              ),
            ),

            body: TabBarView(
              children: [
                WhatsAppcommunity(),
                Whatsapp(),
                WStatus(),
                WCalls()
              ],
            )
        ));
  }
}