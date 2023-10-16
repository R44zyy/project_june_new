import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/productController.dart';
import 'Widgets/ProductTile.dart';
void main(){
  runApp(MaterialApp(home: ProductHome(),));
}
class ProductHome extends StatelessWidget {
  final ProductManger productController= Get.put(ProductManger());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('products'),

    ),
      body: SizedBox(
        child: Obx(() {
          if(productController.isLoading.value){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context,index){
              return ProductTile(productController.productlist[index]);
                },itemCount: productController.productlist.length,

            );
          }}
        ),
      ),
    );
  }
}
