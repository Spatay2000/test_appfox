import 'package:injectable/injectable.dart';
import 'package:test_appfox/domain/entity/film_details_entity.dart';
import 'package:test_appfox/domain/repository/client_repository.dart';
import 'package:test_appfox/domain/usecase/base_usecase.dart';

class GetMoviesLocalUseCaseParams {
  const GetMoviesLocalUseCaseParams();
}

@lazySingleton
class GetMoviesLocalUseCase
    extends UseCase<List<FilmDetailEntity>, NoParams> {
  final ClientRepository clientRepository;
  GetMoviesLocalUseCase({required this.clientRepository});

  @override
  Future<List<FilmDetailEntity>> call(NoParams params) async =>
      await clientRepository.getMoviesLocalDB();
}