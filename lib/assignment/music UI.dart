import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Music_Player(),));
}

class Music_Player extends StatefulWidget {
  @override
  State<Music_Player> createState() => _Music_PlayerState();
}

class _Music_PlayerState extends State<Music_Player> {

  var index=0;

  var image = [
    "https://i.pinimg.com/564x/bb/36/bf/bb36bfb78f1107581e0f410f2a4d6e9e.jpg",
    "https://i.pinimg.com/564x/4b/47/f5/4b47f5f67bc92368ca6b909a99a89b26.jpg",
    "https://m.media-amazon.com/images/I/613BsYj3V-L._SL1360_.jpg",
    'https://i.pinimg.com/564x/c7/e2/52/c7e25211bbfe38a4301b91f90e795325.jpg'
    "https://i.scdn.co/image/ab67616d00001e020b9c6d3934ef0f6d9ca411cd",
    "https://i.scdn.co/image/ab67616d00001e021edf696a64afb583b45e0f93",
    "https://i.scdn.co/image/ab67616d00001e023bfc2617fdd1ff939930ce0e",
    "https://i.scdn.co/image/ab67706f00000002c05479830da0b22a09673a7a",
    "https://i.scdn.co/image/ab67706f00000002b5e73f956d3ea05493366e96",
    "https://i.scdn.co/image/ab67616d0000b27315630d6ae4380c5bee71a9cd",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(backgroundColor: Colors.black,
              floating: true,
              pinned: false,
              title: const Center(
                  child: Text("Playlists", style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),)),
              bottom: AppBar(
                backgroundColor: Colors.black,
                elevation: 0,
                title: Container(

                  decoration: BoxDecoration(color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  height: 40,


                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold),
                          suffixIcon: Icon(Icons.search, color: Colors.pink,)
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) =>
                    Container(
                      decoration: BoxDecoration(color: Colors.black),

                      child: Card(
                        shadowColor: Colors.transparent,
                        child: Image.network(image[index], fit: BoxFit.cover,),
                      ),
                    ), childCount: 10
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2)),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: index,
          onTap: (tappedindex){
            setState(() {
              index=tappedindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "Playlist"),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz_rounded),label: "More")
          ],
        ),
        );

  }
}