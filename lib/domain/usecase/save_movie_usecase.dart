import 'package:injectable/injectable.dart';
import 'package:test_appfox/domain/entity/film_details_entity.dart';
import 'package:test_appfox/domain/repository/client_repository.dart';
import 'package:test_appfox/domain/usecase/base_usecase.dart';

class SaveMovieUseCaseParams {
  final FilmDetailEntity filmDetailEntity;

  const SaveMovieUseCaseParams({
    required this.filmDetailEntity,
  });
}

@lazySingleton
class SaveMovieUseCase implements UseCase<void, SaveMovieUseCaseParams> {
  final ClientRepository repository;

  const SaveMovieUseCase({
    required this.repository,
  });

  @override
  Future<void> call(SaveMovieUseCaseParams params) async {
    return await repository.saveMovie(filmDetailEntity: params.filmDetailEntity);
  }
}
