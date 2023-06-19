import 'package:pruebas_mvvm/data/repositories/MoviesRepository.dart';
import 'package:pruebas_mvvm/domain/usecases/movies/MoviesListUseCases.dart';

class MoviesList {
  late MoviesUsesCases moviesUsesCases;
  late MoviesRepository moviesRepository;
  MoviesList() {
    moviesRepository = MoviesRepository();
    moviesUsesCases = MoviesUsesCases(moviesRepository);
  }
}
