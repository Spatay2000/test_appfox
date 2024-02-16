import 'package:injectable/injectable.dart';
import 'package:test_appfox/data/datasource/local/local_client_datasource.dart';
import 'package:test_appfox/data/datasource/remote/client_remote_datasource.dart';
import 'package:test_appfox/data/model/film_details_model.dart';
import 'package:test_appfox/domain/entity/film_details_entity.dart';
import 'package:test_appfox/domain/entity/searched_films_entity.dart';
import 'package:test_appfox/domain/repository/client_repository.dart';

@LazySingleton(as: ClientRepository)
class ClientRepositoryImpl implements ClientRepository {
  final ClientRemoteDataSource clientRemoteDataSource;
  final ClientLocalDataSource clientLocalDataSource;
  ClientRepositoryImpl(this.clientRemoteDataSource, this.clientLocalDataSource);

  @override
  Future<SearchedFilmsEntity> searchFilms({required String name}) async {
    final searchedFilms = await clientRemoteDataSource.searchFilms(name: name);
    return searchedFilms.toEntity();
  }

  @override
  Future<FilmDetailEntity> getFilmById({required int id}) async {
    final detailFilm = await clientRemoteDataSource.getFilmById(id: id);
    return detailFilm.toEntity();
  }

  @override
  Future<void> saveMovie({required FilmDetailEntity filmDetailEntity}) async {
    return await clientLocalDataSource.saveMovie(
        filmDetailModel: FilmDetailModel.fromEntity(filmDetailEntity));
  }

  @override
  Future<List<FilmDetailEntity>> getMovies() async {
    final getMoviesModel = await clientLocalDataSource.getMovies();
    return List<FilmDetailEntity>.from(getMoviesModel.map((e) => e.toEntity()));
  }

  @override
  Future<void> deleteMovieById(String documentId) async {
    return await clientLocalDataSource.deleteMovieById(documentId);
  }
  
  @override
  Future<List<FilmDetailEntity>> getMoviesLocalDB() async {
   final getMoviesLocal = await clientLocalDataSource.getMoviesLocalDB();
   return List<FilmDetailEntity>.from(getMoviesLocal.map((e) => e.toEntity()));
  }
  
  @override
  Future<void> deleteMovieLocalDbById(int id) async {
        return await clientLocalDataSource.deleteMovieLocalDbById(id);
  }
}
