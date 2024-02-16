import 'package:injectable/injectable.dart';
import 'package:test_appfox/domain/repository/client_repository.dart';
import 'package:test_appfox/domain/usecase/base_usecase.dart';

class DeleteLocalFilmUseCaseParams {
  final int id;

  const DeleteLocalFilmUseCaseParams({
    required this.id,
  });
}

@lazySingleton
class DeleteLocalFilmUseCase implements UseCase<void, DeleteLocalFilmUseCaseParams> {
  final ClientRepository repository;

  const DeleteLocalFilmUseCase({
    required this.repository,
  });

  @override
  Future<void> call(DeleteLocalFilmUseCaseParams params) async {
    return await repository.deleteMovieLocalDbById(params.id);
  }
}
