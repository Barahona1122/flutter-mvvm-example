import 'package:flutter/material.dart';
import 'package:pruebas_mvvm/domain/entities/movies/MoviesEntities.dart';

class ListMovies extends StatelessWidget {
  List<MoviesEntities> movies;
  ListMovies({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    final element = Container(
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(movies[index].name),
            );
          },
        ),
      ),
    );

    return element;
  }
}
