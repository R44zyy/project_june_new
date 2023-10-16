import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main (){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,
    home: Staggred_grid(),));
}
class Staggred_grid extends StatelessWidget {
  const Staggred_grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered Grid"),),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount:2 ,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network("https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1689690065-screenshot-2023-07-18-at-15-20-40-64b69fbe354c8.png?crop=0.9361046959199384xw:1xh;center,top&resize=980:*",
                          fit: BoxFit.contain,),
                      ),
                      SizedBox(height: 10,),
                      Text("To Kill A Mockingbird",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Harper Lee"),
                      Text("2015")
                    ],
                  ),
                )
            ),
            StaggeredGridTile.count(
                crossAxisCellCount:2 ,
                mainAxisCellCount: 3.8,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network("https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1689690358-screenshot-2023-07-18-at-15-25-38-64b6a0e73c9e9.png?crop=0.9596199524940617xw:1xh;center,top&resize=980:*",
                          fit: BoxFit.fill,),
                      ),
                      SizedBox(height: 10,),
                      Text("The Great Gatsby",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("F. Scott Fitzgerald"),
                      Text("2010")
                    ],
                  ),
                )
            ),
            StaggeredGridTile.count(
                crossAxisCellCount:2 ,
                mainAxisCellCount: 5,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network("https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1689758274-screenshot-2023-07-19-at-10-17-34-64b7aa33ba35c.png?crop=0.9752198241406875xw:1xh;center,top&resize=980:*",
                          fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 20,),
                      Text("Wuthering Heights",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),
                      Text("Emily Brontë"),
                      Text('2018')
                    ],
                  ),
                )
            ),
            StaggeredGridTile.count(
                crossAxisCellCount:2 ,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network("https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1689758810-screenshot-2023-07-19-at-10-26-24-64b7ac498a88f.png?crop=0.9886178861788617xw:1xh;center,top&resize=980:*",
                          fit: BoxFit.contain,),
                      ),
                      SizedBox(height: 10,),
                      Text("The Handmaid's Tale",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Margaret Atwood"),
                      SizedBox(height: 10,),
                      Text('2009')
                    ],
                  ),
                )
            ),
            StaggeredGridTile.count(
                crossAxisCellCount:2 ,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network("https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1689759136-screenshot-2023-07-19-at-10-31-54-64b7ad932786b.png?crop=1.00xw:0.952xh;0,0.0346xh&resize=980:*",
                          fit: BoxFit.contain,),
                      ),
                      SizedBox(height: 10,),
                      Text("Things Fall Apart",style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Chinua Achebe"),
                      Text('1958')
                    ],
                  ),
                )
            ),
          ],
        ),
      ),

    );
  }
}
