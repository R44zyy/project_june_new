import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Farmers_Fresh(),));
}

class Farmers_Fresh extends StatefulWidget {

  @override
  State<Farmers_Fresh> createState() => _Farmers_FreshState();
}

class _Farmers_FreshState extends State<Farmers_Fresh> {


  var index=0;
  var rowname=["VEGETABLES","FRUITS","EXOTIC","FRESH CUTS"];

  var Itemname=["Vegetables","Fruits","Exotic","Fresh Cuts","Nutrition Chargers","Packed Flavors"];

  var image=["assets/images/veg.jpeg",
    "assets/images/fruitss.jpeg",
    "assets/images/orange.png",
    "assets/images/mango.png",
    "assets/images/nutritn.jpeg",
    "assets/images/flvrs.jpeg"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.green,
                  floating: true,
                  pinned: false,
                  title: Text("FARMERS FRESH ZONE",style: TextStyle(fontWeight: FontWeight.bold),),

                  actions: [
                    Icon(Icons.location_on,size: 20,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Kochi"),
                    ),
                    Icon(Icons.arrow_drop_down_outlined)
                  ],
                  bottom: AppBar(
                    backgroundColor: Colors.green,
                    elevation: 0,
                    title: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: double.infinity,
                      height: 30,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,top: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search_rounded,size: 20,),
                            hintText: "Search for Vegetables, Fruits ..",
                            hintStyle: TextStyle(color: Colors.grey,fontSize: 15,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),


                SliverList(delegate: SliverChildBuilderDelegate((context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 8,left: 13),
                    child: Row(
                      children: [
                        SizedBox(width: 5,),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.shade100),
                          width: 90,height: 25,child: Center(child: Text("VEGETABLES",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.green),)),),
                        SizedBox(width: 5,),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.shade100),
                          width: 80,height: 25,child: Center(child: Text("FRUITS",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.green),)),),
                        SizedBox(width: 5,),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.shade100),
                          width: 80,height: 25,child: Center(child: Text("EXOTIC",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.green),)),),
                        SizedBox(width: 5,),
                        Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green.shade100),
                          width: 90,height: 25,child: Center(child: Text("FRESH CUTS",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 10,color: Colors.green),)),),
                      ],
                    ),
                  );
                },childCount: 1
                ),
                ),

                SliverList(delegate: SliverChildBuilderDelegate((context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CarouselSlider(items: [
                      Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("data:image/jpeg;base64,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")))),
                      Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/images/veg.jpeg")))),
                      Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://images.unsplash.com/photo-1689776529879-8b4772234449?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")))),
                    ],
                      options: CarouselOptions(
                          initialPage: 1,
                          height: 170,

                          aspectRatio: 16/9,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: true,
                          autoPlay: false,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayCurve: Curves.linear,
                          // enlargeCenterPage: true,
                          // enlargeFactor: .5,
                          scrollDirection: Axis.horizontal
                      ),),
                  );
                },childCount: 1)),


                SliverList(delegate: SliverChildBuilderDelegate((context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(5)),

                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.access_alarms_outlined,color: Colors.green,),
                              SizedBox(height: 5,),
                              Text("30 MINS POLICY",style: TextStyle(fontSize: 10),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.phonelink_ring_rounded,color: Colors.green,),
                              SizedBox(height: 5,),
                              Text("TRACEABILITY",style: TextStyle(fontSize: 10),),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Column(
                            children: [
                              Icon(Icons.local_shipping_outlined,color: Colors.green,),
                              SizedBox(height: 5,),
                              Text("LOCAL SOURCING",style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },childCount: 1)),
                // SizedBox(height:10),


                SliverList(delegate: SliverChildBuilderDelegate((context,index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Row(
                      children: [Text("Shop By Category")],
                    ),
                  );
                },childCount: 1)),
                

                SliverGrid(
                    delegate: SliverChildBuilderDelegate((context, index) =>
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),color: Colors.white),
                              child: Card(
                                elevation: 1,
                                shadowColor: Colors.transparent,
                                child: Image.asset(image[index], height: 95,width: 100,),
                              ),
                            ),
                            Text(Itemname[index])
                          ],
                        ), childCount: 6
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3)),

              ]),

          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey.shade500,
              currentIndex: index,
              onTap: (tappedindex){
                setState(() {
                  index=tappedindex;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
                BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user),label: "Account"),
              ],
              ),
          ),
    );
    }
}