import 'package:flutter/material.dart';
import 'package:project_june2/shadepreference/simple%20login%20using%20shared%20prfr/person.dart';

import 'package:project_june2/shadepreference/simple%20login%20using%20shared%20prfr/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../insta.dart';
import '../../intro screen_or_onboarding screen.dart';

class sharedHome extends StatefulWidget {
  const sharedHome({super.key});

  @override
  State<sharedHome> createState() => _sharedHomeState();
}

class _sharedHomeState extends State<sharedHome> {
  late SharedPreferences preferences;
  late String username;


  @override
  void initState(){
    fetchData();
    super.initState();
  }
    void fetchData()async{
    preferences=await SharedPreferences.getInstance();
    setState(() {
      username=preferences.getString("username")!;
    });
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Instaa()));
      }, icon: Icon(Icons.menu)),
       
        actions: [
          CircleAvatar(
            backgroundColor: Colors.red,
            child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.red
              ),
                onPressed: (){
                  preferences.setBool("newuser", true);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginShared()));

                }, icon: Icon(Icons.logout) ,color: Colors.white,splashColor: Colors.yellow),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome rukiya $username"),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
