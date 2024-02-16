part of 'liked_movie_bloc.dart';

sealed class LikedMovieState extends Equatable {
  const LikedMovieState();

  @override
  List<Object> get props => [];
}

final class LikedMovieInitial extends LikedMovieState {}

class LikedMovieLoading extends LikedMovieState {}

class LikedMovieLoaded extends LikedMovieState {
  final List<FilmDetailEntity> likedMovie;
  const LikedMovieLoaded({
    required this.likedMovie,
  });

  @override
  List<Object> get props => [likedMovie];
}

class LikedMovieFailure extends LikedMovieState {
  final String message;

  const LikedMovieFailure({required this.message});

  @override
  List<Object> get props => [message];
}


