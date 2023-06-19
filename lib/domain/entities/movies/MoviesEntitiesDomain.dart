import 'package:pruebas_mvvm/domain/entities/movies/MoviesEntities.dart';

abstract class MoviesModelDomain {
  Future<List<MoviesEntities>> getAll();
}
