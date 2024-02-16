import 'package:injectable/injectable.dart';
import 'package:test_appfox/domain/entity/searched_films_entity.dart';
import 'package:test_appfox/domain/repository/client_repository.dart';

import 'base_usecase.dart';

class GetSeacrhedFilmsUseCaseParams {
  final String name;

  const GetSeacrhedFilmsUseCaseParams({required this.name});
}

@lazySingleton
class GetSeacrhedFilmsUseCase
    extends UseCase<SearchedFilmsEntity, GetSeacrhedFilmsUseCaseParams> {
  final ClientRepository clientRepository;
  GetSeacrhedFilmsUseCase({required this.clientRepository});

  @override
  Future<SearchedFilmsEntity> call(
          GetSeacrhedFilmsUseCaseParams params) async =>
      await clientRepository.searchFilms(name: params.name);
}
