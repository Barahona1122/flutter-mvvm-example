import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pruebas_mvvm/domain/config/movies/MoviesList.dart';
import 'package:pruebas_mvvm/views/pages/movies/helpers/AsyncSnapshot.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MoviesList moviesList = MoviesList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
              child: FutureBuilder(
                  key: const Key('futureBuilder'),
                  future: moviesList.moviesUsesCases.getAll(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) =>
                      asyncSnapshot(snapshot)))),
    );
  }
}
