import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:test_appfox/core/utils/exceptions.dart';
import 'package:test_appfox/domain/entity/film_details_entity.dart';
import 'package:test_appfox/domain/usecase/detail_film_usecase.dart';
import 'package:test_appfox/domain/usecase/save_movie_usecase.dart';

part 'film_detail_event.dart';
part 'film_detail_state.dart';

@injectable
class FilmDetailBloc extends Bloc<FilmDetailEvent, FilmDetailState> {
  final GetDetailFilmByIdUseCase getDetailFilmByIdUseCase;
  final SaveMovieUseCase saveMovieUseCase;
  FilmDetailBloc(this.getDetailFilmByIdUseCase, this.saveMovieUseCase)
      : super(FilmDetailInitial()) {
    on<FilmDetailEvent>((event, emit) async {
      try {
        if (event is GetDetailFilm) {
          emit(FilmDetailLoading());
          final events = await getDetailFilmByIdUseCase
              .call(GetDetailFilmByIdUseCaseParams(id: event.id));
          emit(FilmDetailtLoaded(filmDetailEntity: events));
        }
      } on BaseException catch (e) {
        emit(FilmDetailFaulure(message: e.getMessage()));
      }
    });

    on<SaveMovie>((event, emit) async {
      try {
        emit(FilmDetailLoading());

        await saveMovieUseCase.call(
            SaveMovieUseCaseParams(filmDetailEntity: event.filmDetailEntity));

        emit(FilmDetailtLoaded(filmDetailEntity: event.filmDetailEntity));
        
      } on BaseException catch (e) {
        emit(FilmDetailFaulure(message: e.getMessage()));
      }
    });
  }
}
