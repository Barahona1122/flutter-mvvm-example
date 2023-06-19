import 'package:pruebas_mvvm/data/model/MoviesModel.dart';
import 'package:pruebas_mvvm/data/newtwork/NetworkApiEndPoints.dart';
import 'package:pruebas_mvvm/data/newtwork/NetworkApiService.dart';
import 'package:pruebas_mvvm/data/newtwork/NetworkResponse.dart';
import 'package:pruebas_mvvm/domain/entities/movies/MoviesEntities.dart';
import 'package:pruebas_mvvm/domain/entities/movies/MoviesEntitiesDomain.dart';

class MoviesRepository extends MoviesModelDomain {
  final NetworkApiService networkApiService = NetworkApiService();
  @override
  Future<List<MoviesEntities>> getAll() async {
    NetworkResponse response = NetworkResponse(
        await networkApiService.getResponse(NetworkApiEndPoints.getMovies));
    if (response.succes()) {
      final moviesData = response.data()["movies"];

      final movies = moviesData
          .map<MoviesEntities>((e) => MoviesModel.fromMap(e).toMovies())
          .toList();
      return movies;
    } else {
      throw Exception("Error interno");
    }
  }
}
