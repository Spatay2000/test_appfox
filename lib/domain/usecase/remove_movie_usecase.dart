import 'package:injectable/injectable.dart';
import 'package:test_appfox/domain/repository/client_repository.dart';
import 'package:test_appfox/domain/usecase/base_usecase.dart';

class RemoveUseCaseParams {
  final String docId;

  const RemoveUseCaseParams({
    required this.docId,
  });
}

@lazySingleton
class RemoveMovieUseCase implements UseCase<void, RemoveUseCaseParams> {
  final ClientRepository repository;

  const RemoveMovieUseCase({
    required this.repository,
  });

  @override
  Future<void> call(RemoveUseCaseParams params) async {
    return await repository.deleteMovieById(params.docId);
  }
}
