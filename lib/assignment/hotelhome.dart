import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'hoteldetails.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Hotel_Homepage(),));
}
class Hotel_Homepage extends StatelessWidget {

  var icontext=["Hotel","Restaurant","Cafe"];
  var iconname=[
    Icon(Icons.hotel,color: Colors.white,),
    Icon(Icons.restaurant,color: Colors.white,),
    Icon(Icons.local_cafe,color: Colors.white,),
  ];
  List Gcolor=[Colors.red,Colors.blue,Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.cyan,
            leading: Icon(Icons.menu),
            title:Padding(
              padding: const EdgeInsets.only(left: 30,top: 70),
              child: Text("Type Your Location"),
            ),
            actions: [
              Icon(Icons.favorite_border),
              SizedBox(width: 10,),
            ],elevation: 0,
          ),

          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Container(color: Colors.cyan,
              height: 90,width: 50,
              child: Column(
                children: [
                  // Text("Type your Location",style: TextStyle(color: Colors.white,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 18),),
                  // SizedBox(height: 5,),

                  Container(height: 40,width: 320,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.search_rounded),
                        SizedBox(width: 20,),
                        Text("search")
                      ],
                    ),
                  )
                ],
              ),
            );
          },childCount: 1
          )),


          SliverGrid(delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
              return Padding(
                padding: const EdgeInsets.all(10.0),

                child: Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Gcolor[index],),
                  height: 20,width: 25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      iconname[index],
                      Text(icontext[index],style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              );
            },childCount: 3,
          ),

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,)),


          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Hotel_Details()));
                        },
                        child: Hoteldata(Hname: 'LA Marriot',

                          place: "Kochi, Kerala",
                          myimage:NetworkImage("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/ee/2d/9d/jw-marriott-hotel-mumbai.jpg?w=1100&h=-1&s=1"), rate: "\$130",),
                      ),
                      SizedBox(height: 20,),
                      Hoteldata(Hname: "New Villa",
                        place: "Edappally, Ernakulam",
                        myimage: NetworkImage("https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_600,q_auto,w_600//itemimages/58/45/5845948.jpeg"),
                        rate: "\$100",)
                    ],
                  ),
                ));
          },childCount: 1))
        ],
      ),

    );
  }
}

class Hoteldata extends StatelessWidget{

  String Hname;
  String place;
  String rate;

  ImageProvider myimage;
  Hoteldata({required this.Hname,required this.place,required this.rate, required this.myimage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [

            Card(
              elevation: 4,
              child: Container(height: 300,width: 330,
                child: Column(
                  children: [
                    Image(image: myimage,fit: BoxFit.contain,),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(Hname,style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(place),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 20,),
                        ),

                        SizedBox(width: 5,),
                        Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 20,),
                        SizedBox(width: 5,),
                        Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 20,),
                        SizedBox(width: 5,),
                        Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 20,),
                        SizedBox(width: 5,),
                        Icon(FontAwesomeIcons.solidStar,color: Colors.grey,size: 20,),

                      ],
                    ),
                  ],
                ),
              ),
            ),

            Positioned(top: 230,left: 300,
                child: Container(color: Colors.white,
                    child: Text(rate,style: TextStyle(color: Colors.black,height: 2,),))),
          ],
        )],
    );
  }

}
