import 'package:pruebas_mvvm/domain/entities/movies/MoviesEntities.dart';

class MoviesModel {
  MoviesModel({required this.id, required this.name, required this.status});
  int id;
  String name;
  int status;

  factory MoviesModel.fromMap(Map<String, dynamic> json) {
    return MoviesModel(
      id: json['id'],
      name: json['name'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    return data;
  }

  factory MoviesModel.fromMovies(MoviesEntities movies) {
    return MoviesModel(id: movies.id, name: movies.name, status: movies.status);
  }

  MoviesEntities toMovies() {
    return MoviesEntities(id: id, name: name, status: status);
  }
}
