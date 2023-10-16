import 'package:flutter/material.dart';
import 'package:project_june2/State%20managment%20using%20provider/provider/movie%20provider.dart';
import 'package:project_june2/State%20managment%20using%20provider/view/wishlist.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>
    (create: (BuildContext context)=>MovieProvider(),
  child: MaterialApp(home: Moviesss())
  ));

}
class Moviesss extends StatelessWidget {
  const Moviesss({super.key});

  @override
  Widget build(BuildContext context) {
    var wishlist = context.watch<MovieProvider>().moviessWish;
    var movies = context.watch<MovieProvider>().movies;
    return
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black45,
              centerTitle: true,
              title: Text(
                'Movies',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => WishListScreen())), icon: Icon(Icons.favorite,color: Colors.red,))
              ],
            ),
            body: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  final currentMovie = movies[index];
                  return Card(
                    child: ListTile(
                      title: Text(currentMovie.Name),
                      subtitle: Text(currentMovie.time!),
                      trailing: IconButton(
                        onPressed: () {
                          if (!wishlist.contains(currentMovie)) {
                            context
                                .read<MovieProvider>()
                                .addtowishlist(currentMovie);
                          } else {
                            context
                                .read<MovieProvider>()
                                .Removetowishlist(currentMovie);
                          }
                        },
                        icon: Icon(Icons.favorite_outline_sharp),
                        color: wishlist.contains(currentMovie)
                            ? Colors.red
                            : Colors.cyan,
                      ),
                    ),
                  );
                }));
  }
}
