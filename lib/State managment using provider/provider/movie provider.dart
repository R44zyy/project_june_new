import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project_june2/State%20managment%20using%20provider/model/movies.dart';
final List<Movies>movieList=List.generate(100, (index) => Movies(
  Name: 'Movie $index',time: '${Random().nextInt(100)+60}minutes',
));

class MovieProvider extends ChangeNotifier {
final List<Movies>_movie=movieList;
List<Movies>get movies =>_movie;

final List<Movies>_wishlist=movieList;
List<Movies>get moviessWish=>_wishlist;


void addtowishlist(Movies MovieFrommainpage){
  _wishlist.add(MovieFrommainpage);
  notifyListeners();
}
void Removetowishlist(Movies MovieFrommainpage){
  _wishlist.remove(MovieFrommainpage);
  notifyListeners();
}

}