import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: Music_Playlist(),));
}

class Music_Playlist extends StatefulWidget {

  @override
  State<Music_Playlist> createState() => _Music_PlaylistState();
}
class _Music_PlaylistState extends State<Music_Playlist>{

  var selectedIndex=0;


  var image=["https://i.scdn.co/image/ab67706c0000da84069257f3f45ae78badf609ba",
    "https://i.scdn.co/image/ab67706c0000da84fa3b46fd9eee91503b1491c4",
    "https://i.scdn.co/image/ab67706c0000da849e0d81f8590c5398416ea6ca",
    "https://i.scdn.co/image/ab67706c0000da84a795ef7e71dbb2947285a0f6",
    "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/5d4fd3124301423.610137e020199.jpg",
    "https://marketplace.canva.com/EAFSNmv0C0k/1/0/1600w/canva-orange-illustration-relaxing-playlist-cover-G1lOYn2PS28.jpg"];


  var SImage=["https://c.saavncdn.com/026/Chaleya-From-Jawan-Hindi-2023-20230814014337-500x500.jpg",
    "https://c.saavncdn.com/881/Phir-Kabhi-Reprise-Hindi-2016-500x500.jpg",
    "https://i.scdn.co/image/ab67706c0000da84b2cb1c908d06ecc68991b0ca",
    "https://i.scdn.co/image/ab67616d0000b273569f64493ca55cd96fdee412",
    "https://i.scdn.co/image/ab67616d0000b273d951099a6beb9405d61719ff",
    "https://i.scdn.co/image/ab67616d0000b2738809b2a066d8da30409669d8"];


  var Song=["Chaleya","Phir Kabhi","Jawan Theme","Friends","Photo","Oru Kinnaraganam"];
  var Sname=["Arijit Singh", "Arman Malik","Anirudh Ravichander","Marshmello","Karan Sehmbi","Udith Narayanan"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,
          title:Center(child: Text("RitMoic",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold),)),
        ),
        body: Container(color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Suggested Playlists",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold,fontSize: 18),),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 150, color: Colors.black,
                  child: ListView.custom(scrollDirection:Axis.horizontal,
                      childrenDelegate: SliverChildListDelegate(
                          List.generate(6, (index) => Card(
                            child: Image.network(image[index]),
                          )))),
                ),
              ),



              SizedBox(height: 5,),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("Recommended for you",style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold,fontSize: 15),),
                  ),
                ],
              ),

              SizedBox(height: 5,),
              Expanded(
                  child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context,index){
                        return Card(
                          color: Colors.black,
                          child: ListTile(
                            title: Text(Song[index],style: TextStyle(fontSize:15,color: Colors.pinkAccent,fontWeight: FontWeight.bold),),
                            subtitle: Text(Sname[index],style: TextStyle(color: Colors.white,fontSize: 12),),
                            leading: Image.network(SImage[index]),
                            trailing:
                            Row(mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.star_border_outlined,color: Colors.pinkAccent,),
                                SizedBox(width: 15,),
                                Icon(Icons.download_outlined,color: Colors.pinkAccent)
                              ],
                            ),


                          ),
                        );
                      })
              )
            ],
          ),
        ),

        bottomNavigationBar: SlidingClippedNavBar(
          backgroundColor: Colors.black,
          onButtonPressed: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          iconSize: 20,
          activeColor: Colors.pinkAccent,
          inactiveColor: Colors.white,
          selectedIndex: selectedIndex,
          barItems: [
            BarItem(
              icon: Icons.home,
              title: 'Home',
            ),
            BarItem(
              icon: Icons.search_rounded,
              title: 'Search',
            ),
            BarItem(
              icon: Icons.library_music,
              title: 'Library',
            ),

            BarItem(
              icon: Icons.more_horiz_rounded,
              title: 'More',
            ),
          ],
        ),
        );
    }

}