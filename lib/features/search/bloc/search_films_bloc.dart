import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:test_appfox/core/utils/exceptions.dart';

import 'package:test_appfox/domain/entity/searched_films_entity.dart';

import 'package:test_appfox/domain/usecase/searched_films_usecase.dart';

part 'search_films_event.dart';
part 'search_films_state.dart';

@injectable
class SearchFilmsBloc extends Bloc<SearchFilmsEvent, SearchFilmsState> {
  final GetSeacrhedFilmsUseCase getSeacrhedFilmsUseCase;

  SearchFilmsBloc(
      {required this.getSeacrhedFilmsUseCase,})
      : super(SearchFilmsInitial()) {
    on<SearchFilmsEvent>((event, emit) async {
      try {
        if (event is GetSearchedFilms) {
          emit(SearchedFilmsLoading());
          final events = await getSeacrhedFilmsUseCase
              .call(GetSeacrhedFilmsUseCaseParams(name: event.name));
          emit(SearchedFilmstLoaded(searchedFilmsEntity: events));
        }
      } on BaseException catch (e) {
        emit(SearchedFilmsFaulure(message: e.getMessage()));
      }
    });

   
  }
}
