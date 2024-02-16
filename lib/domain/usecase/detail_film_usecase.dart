import 'package:injectable/injectable.dart';
import 'package:test_appfox/domain/entity/film_details_entity.dart';
import 'package:test_appfox/domain/repository/client_repository.dart';

import 'base_usecase.dart';

class GetDetailFilmByIdUseCaseParams {
  final int id;

  const GetDetailFilmByIdUseCaseParams({required this.id});
}

@lazySingleton
class GetDetailFilmByIdUseCase
    extends UseCase<FilmDetailEntity, GetDetailFilmByIdUseCaseParams> {
  final ClientRepository clientRepository;
  GetDetailFilmByIdUseCase({required this.clientRepository});

  @override
  Future<FilmDetailEntity> call(
          GetDetailFilmByIdUseCaseParams params) async =>
      await clientRepository.getFilmById(id: params.id);
}
