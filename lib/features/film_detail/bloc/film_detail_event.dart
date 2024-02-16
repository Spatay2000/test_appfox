part of 'film_detail_bloc.dart';

sealed class FilmDetailEvent extends Equatable {
  const FilmDetailEvent();

  @override
  List<Object> get props => [];
}

class GetDetailFilm extends FilmDetailEvent {
  final int id;

  const GetDetailFilm({required this.id});

  @override
  List<Object> get props => [id];
}

class SaveMovie extends FilmDetailEvent {
  final FilmDetailEntity filmDetailEntity;
  const SaveMovie({required this.filmDetailEntity});
  @override
  List<Object> get props => [filmDetailEntity];
}
