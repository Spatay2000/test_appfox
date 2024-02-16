part of 'liked_movie_bloc.dart';

sealed class LikedMovieEvent extends Equatable {
  const LikedMovieEvent();

  @override
  List<Object> get props => [];
}

class GetLikedMovie extends LikedMovieEvent {
  const GetLikedMovie();

  @override
  List<Object> get props => [];
}

class FetchMoviesWithInternet extends LikedMovieEvent {}

class FetchMoviesWithoutInternet extends LikedMovieEvent {}



class RemoveMovie extends LikedMovieEvent {
  final String id;
  const RemoveMovie({required this.id});

  @override
  List<Object> get props => [id];
}
