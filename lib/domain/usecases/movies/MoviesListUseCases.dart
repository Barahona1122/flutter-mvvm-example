import 'package:pruebas_mvvm/domain/entities/movies/MoviesEntities.dart';
import 'package:pruebas_mvvm/domain/entities/movies/MoviesEntitiesDomain.dart';

class MoviesUsesCases implements MoviesModelDomain {
  final MoviesModelDomain moviesModelDomain;
  MoviesUsesCases(this.moviesModelDomain);

  @override
  Future<List<MoviesEntities>> getAll() {
    return moviesModelDomain.getAll();
  }
}
