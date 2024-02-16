import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:test_appfox/core/utils/exceptions.dart';
import 'package:test_appfox/domain/entity/film_details_entity.dart';
import 'package:test_appfox/domain/usecase/base_usecase.dart';
import 'package:test_appfox/domain/usecase/delete_local_film_usecase.dart';
import 'package:test_appfox/domain/usecase/get_movies_local_usecase.dart';
import 'package:test_appfox/domain/usecase/liked_movie_usecase.dart';
import 'package:test_appfox/domain/usecase/remove_movie_usecase.dart';

part 'liked_movie_event.dart';
part 'liked_movie_state.dart';

@injectable
class LikedMovieBloc extends Bloc<LikedMovieEvent, LikedMovieState> {
  final LikedMovieUseCase likedMovieUseCase;
  final RemoveMovieUseCase removeMovieUseCase;
  final GetMoviesLocalUseCase getMoviesLocalUseCase;
  final DeleteLocalFilmUseCase deleteLocalFilmUseCase;
  LikedMovieBloc(
    this.likedMovieUseCase,
    this.removeMovieUseCase,
    this.getMoviesLocalUseCase,
    this.deleteLocalFilmUseCase,
  ) : super(LikedMovieInitial()) {
    
    on<LikedMovieEvent>((event, emit) async {
      final connectivityResult = await Connectivity().checkConnectivity();
      emit(LikedMovieLoading());
      try {
        List<FilmDetailEntity> movies;
        if (connectivityResult != ConnectivityResult.none) {
          movies = await likedMovieUseCase.call(NoParams());
        } else {
          movies = await getMoviesLocalUseCase.call(NoParams());
        }

        emit(LikedMovieLoaded(
            likedMovie: movies)); 
      } on BaseException catch (e) {
        emit(LikedMovieFailure(
            message:
                e.getMessage())); // В случае ошибки эмитим состояние с ошибкой
      }
    });

    on<RemoveMovie>((event, emit) async {
      final connectivityResult = await Connectivity().checkConnectivity();
      final hasInternet = connectivityResult != ConnectivityResult.none;
      try {
        emit(LikedMovieLoading());
        if (hasInternet) {
          await removeMovieUseCase.call(RemoveUseCaseParams(docId: event.id));
        } else {
          await deleteLocalFilmUseCase
              .call(DeleteLocalFilmUseCaseParams(id: int.parse(event.id)));
        }
        final events = hasInternet
            ? await likedMovieUseCase.call(NoParams())
            : await getMoviesLocalUseCase.call(NoParams());
        emit(LikedMovieLoaded(likedMovie: events));
      } on BaseException catch (e) {
        emit(LikedMovieFailure(message: e.getMessage()));
      }
    });
  }
}
