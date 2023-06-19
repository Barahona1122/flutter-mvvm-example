import 'package:flutter/material.dart';
import 'package:pruebas_mvvm/domain/entities/movies/MoviesEntities.dart';
import 'package:pruebas_mvvm/views/pages/movies/widgets/ListMovies.dart';

Widget asyncSnapshot(AsyncSnapshot snapshot) {
  Widget element = Container();
  if (snapshot.hasError) {
    element = Text(snapshot.error.toString());
  } else if (!snapshot.hasData) {
    element = const Center(
      child: CircularProgressIndicator(),
    );
  } else {
    List<MoviesEntities> movies = snapshot.data;
    element = ListMovies(movies: movies);
  }
  return element;
}
