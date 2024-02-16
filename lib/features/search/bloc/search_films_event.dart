part of 'search_films_bloc.dart';

abstract class SearchFilmsEvent extends Equatable {
  const SearchFilmsEvent();

  @override
  List<Object> get props => [];
}

class GetSearchedFilms extends SearchFilmsEvent {
  final String name;

  const GetSearchedFilms({required this.name});

  @override
  List<Object> get props => [name];
}

