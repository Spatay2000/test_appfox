import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:test_appfox/core/shared/db_helper.dart';
import 'package:test_appfox/data/model/film_details_model.dart';

abstract class ClientLocalDataSource {
  Future<void> saveMovie({required FilmDetailModel filmDetailModel});
  Future<List<FilmDetailModel>> getMovies();
  Future<void> deleteMovieById(String documentId);
  Future<List<FilmDetailModel>> getMoviesLocalDB();
  Future<void> deleteMovieLocalDbById(int id);
}

@LazySingleton(as: ClientLocalDataSource)
class ClientLocalDataSourceImpl implements ClientLocalDataSource {
  @override
  Future<void> saveMovie({required FilmDetailModel filmDetailModel}) async {
    CollectionReference collection =
        FirebaseFirestore.instance.collection('movie');
    await collection.add(filmDetailModel.toJson());

    final db = await DatabaseHelper.database;
    await db.insert('Films', {
      'name': filmDetailModel.name,
      'shortDescription': filmDetailModel.shortDescription,
      'year': filmDetailModel.year,
    });
  }

  @override
  Future<List<FilmDetailModel>> getMovies() async {
    CollectionReference<FilmDetailModel> collection = FirebaseFirestore.instance
        .collection('movie')
        .withConverter<FilmDetailModel>(
          fromFirestore: (snapshots, _) =>
              FilmDetailModel.fromJson(snapshots.data()!, docId: snapshots.id),
          toFirestore: (movie, _) => movie.toJson(),
        );
    QuerySnapshot<FilmDetailModel> querySnapshot = await collection.get();
    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  @override
  Future<void> deleteMovieById(String documentId) async {
    await FirebaseFirestore.instance
        .collection('movie')
        .doc(documentId)
        .delete();
  }

  @override
  Future<List<FilmDetailModel>> getMoviesLocalDB() async {
    final db = await DatabaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('Films');

    return List.generate(maps.length, (i) {
      return FilmDetailModel(
          fees: null,
          status: null,
          externalId: null,
          rating: null,
          votes: null,
          backdrop: null,
          premiereModel: null,
          movieLength: null,
          images: null,
          productionCompanies: null,
          spokenLanguages: null,
          id: maps[i]['id'] as int?,
          type: null,
          name: maps[i]['name'] as String?,
          description: null,
          distributors: null,
          slogan: null,
          year: null,
          poster: null,
          facts: null,
          genres: null,
          countries: null,
          seasonsInfo: null,
          persons: null,
          lists: null,
          typeNumber: null,
          alternativeName: null,
          enName: null,
          names: null,
          ageRating: null,
          ratingMpaa: null,
          updatedAt: null,
          shortDescription: maps[i]['shortDescription'] as String?,
          technology: null,
          ticketsOnSale: null,
          sequelsAndPrequels: null,
          similarMovies: null,
          top10: null,
          top250: null,
          deletedAt: null,
          isSeries: null,
          seriesLength: null,
          totalSeriesLength: null,
          networks: null,
          videos: null);
    });
  }

  @override
  Future<void> deleteMovieLocalDbById(int id) async {
    final db = await DatabaseHelper.database;
    await db.delete(
      'Films',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
