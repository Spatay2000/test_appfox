part of 'film_detail_bloc.dart';

sealed class FilmDetailState extends Equatable {
  const FilmDetailState();

  @override
  List<Object> get props => [];
}

final class FilmDetailInitial extends FilmDetailState {}

class FilmDetailLoading extends FilmDetailState {}

class FilmDetailtLoaded extends FilmDetailState {
  final FilmDetailEntity filmDetailEntity;

  const FilmDetailtLoaded({required this.filmDetailEntity});

  @override
  List<Object> get props => [filmDetailEntity];
}

class FilmDetailFaulure extends FilmDetailState {
  final String message;

  const FilmDetailFaulure({required this.message});

  @override
  List<Object> get props => [message];
}


class SaveDataSuccess extends FilmDetailState{}