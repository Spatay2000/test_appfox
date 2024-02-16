part of 'search_films_bloc.dart';

sealed class SearchFilmsState extends Equatable {
  const SearchFilmsState();

  @override
  List<Object> get props => [];
}

final class SearchFilmsInitial extends SearchFilmsState {}

class SearchedFilmsLoading extends SearchFilmsState {}

class SearchedFilmstLoaded extends SearchFilmsState {
  final SearchedFilmsEntity? searchedFilmsEntity;

  const SearchedFilmstLoaded({required this.searchedFilmsEntity});

  @override
  List<Object> get props => [searchedFilmsEntity!];
}

class SearchedFilmsFaulure extends SearchFilmsState {
  final String message;

  const SearchedFilmsFaulure({required this.message});

  @override
  List<Object> get props => [message];
}
