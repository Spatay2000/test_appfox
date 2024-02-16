import 'package:injectable/injectable.dart';
import 'package:test_appfox/core/shared/http.dart';
import 'package:test_appfox/data/model/film_details_model.dart';
import 'package:test_appfox/data/model/searched_films_model.dart';

abstract class ClientRemoteDataSource {
  Future<SearchedFilmsModel> searchFilms({required String name});
  Future<FilmDetailModel> getFilmById({required int id});
}

@LazySingleton(as: ClientRemoteDataSource)
class ClientRemoteDataSourceImpl implements ClientRemoteDataSource {
  final Http http;
  const ClientRemoteDataSourceImpl({
    required this.http,
  });

  @override
  Future<SearchedFilmsModel> searchFilms({required String name}) async {
    final searchedFilms = await http.get('/search?page=1&limit=10&query=$name');
    return SearchedFilmsModel.fromJson(searchedFilms);
  }

  @override
  Future<FilmDetailModel> getFilmById({required int id}) async {
    final detailFilm = await http.get('/$id');
    return FilmDetailModel.fromJson(detailFilm);
  }
}
