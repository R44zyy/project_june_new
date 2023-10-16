import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../Model/product model.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: CachedNetworkImage(
              imageUrl: product.image!,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.title!,
            maxLines: 2,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            "${product.price}",
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
