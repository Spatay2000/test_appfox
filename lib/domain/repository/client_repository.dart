import 'package:test_appfox/domain/entity/film_details_entity.dart';
import 'package:test_appfox/domain/entity/searched_films_entity.dart';

abstract class ClientRepository {
  Future<SearchedFilmsEntity> searchFilms({required String name});

  Future<FilmDetailEntity> getFilmById({required int id});

  Future<void> saveMovie({required FilmDetailEntity filmDetailEntity});

  Future<List<FilmDetailEntity>> getMovies();

  Future<void> deleteMovieById(String documentId);

  Future<List<FilmDetailEntity>> getMoviesLocalDB();

   Future<void> deleteMovieLocalDbById(int id);
}

