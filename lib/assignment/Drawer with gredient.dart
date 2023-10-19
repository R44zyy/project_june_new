import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: Drawer_Assign(),));
}

class Drawer_Assign extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text("Profile"),
          ),

          drawer: Drawer(

              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.orange,Colors.red]
                  ),
                ),

                child: ListView(

                  children: [
                    // UserAccountsDrawerHeader(
                    //   accountName: Text("Sundar Pichai"),
                    //     accountEmail: Text("sundarpichai@gmail.com"),
                    //
                    //
                    // currentAccountPicture: CircleAvatar(
                    //   backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg"),
                    // ),
                    // ),
                    SizedBox(
                      height: 40,
                    ),
                    const ListTile(
                      title: Text("Sundar Pichai",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      subtitle: Text("CEO of Google",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/864282616597405701/M-FEJMZ0_400x400.jpg"),
                      ),
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    const ListTile(leading: Icon(Icons.dashboard,color: Colors.white,),
                      title: Text("Dashboard",style: TextStyle(color: Colors.white),),),

                  const  ListTile(leading: Icon(Icons.leaderboard_sharp,color: Colors.white),
                      title: Text("Leads",style: TextStyle(color: Colors.white),),),

                    ListTile(leading: Icon(Icons.person,color: Colors.white,),
                      title: Text("Clients",style: TextStyle(color: Colors.white),),),

                    ListTile(leading: Icon(Icons.rocket_launch,color: Colors.white,),
                      title: Text("Projects",style: TextStyle(color: Colors.white),),),

                    ListTile(leading: Icon(Icons.man,color: Colors.white,),
                      title: Text("Patients",style: TextStyle(color: Colors.white),),),


                    ListTile(leading: Icon(Icons.subscriptions_rounded,color: Colors.white,),
                      title: Text("Subscriptions",style: TextStyle(color: Colors.white),),),

                    ListTile(leading: Icon(Icons.payment,color: Colors.white,),
                      title: Text("Payments",style: TextStyle(color: Colors.white),),),

                    ListTile(leading: Icon(Icons.people,color: Colors.white,),
                      title: Text("Users",style: TextStyle(color: Colors.white),),),

                    ListTile(leading: Icon(Icons.library_add,color: Colors.white,),
                      title: Text("Library",style: TextStyle(color: Colors.white),),),

                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(onPressed: () {

                    },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                        ),
                        child: Text("Log Out",style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),


              ),
          ),
    );
  }
}