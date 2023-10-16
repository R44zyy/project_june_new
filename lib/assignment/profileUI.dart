import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: User_Profile(),));
}

class User_Profile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My profile"),
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back,color: Colors.black,),
          elevation: 0,
          actions: [
            Icon(Icons.menu,color: Colors.black,),
            SizedBox(width: 20,)
          ],
        ),
        body: Column(

          children: [
            const Center(
              child: CircleAvatar(radius: 50,
                backgroundImage: AssetImage("assets/images/raazi.jpg"),
              ),
            ),
            SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.facebook,color: Colors.blue,),
                SizedBox(width: 10,),
                Icon(FontAwesomeIcons.google,color: Colors.red,),
                SizedBox(width: 10,),
                Icon(FontAwesomeIcons.twitter,color: Colors.blue,),
                SizedBox(width: 10,),
                Icon(FontAwesomeIcons.linkedin,color: Colors.deepPurpleAccent,),
              ],
            ),
            SizedBox(height: 10,),
            Text("R44zyy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            Text("@Raazyy"),
            SizedBox(height: 10,),
            Text("Mobile App Developer and Open source enthusiastic"),

            Expanded(
                child: ListView(
                  children: [
                    Container(height: 50,margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.verified_user),
                          SizedBox(width: 20,),
                          Text("Privacy"),
                          SizedBox(width: 187,),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),

                    Container(height: 50,margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.history),
                          SizedBox(width: 20,),
                          Text("Purchase history"),
                          SizedBox(width: 130,),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),


                    Container(height: 50,margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.question_mark),
                          SizedBox(width: 20,),
                          Text("Help & Support"),
                          SizedBox(width: 140,),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),

                    Container(height: 50,margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child:const Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.settings),
                          SizedBox(width: 20,),
                          Text("Settings"),
                          SizedBox(width: 182,),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),

                    Container(height: 50,margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child:const Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.person_add),
                          SizedBox(width: 20,),
                          Text("Invite a friend"),
                          SizedBox(width: 150,),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),


                    Container(height: 50,margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Row(
                        children: [
                          SizedBox(width: 20,),
                          Icon(Icons.logout),
                          SizedBox(width: 20,),
                          Text("Log out"),
                          SizedBox(width: 180,),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),

                  ],
                )
            ),


          ],
        )
    );
  }
}
