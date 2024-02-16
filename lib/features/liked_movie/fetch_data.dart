import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_appfox/core/get_it/configurator.dart';
import 'package:test_appfox/features/liked_movie/bloc/liked_movie_bloc.dart';

class LikedMovieScreen extends StatefulWidget {
  const LikedMovieScreen({super.key});

  @override
  State<LikedMovieScreen> createState() => _LikedMovieScreenState();
}

class _LikedMovieScreenState extends State<LikedMovieScreen> {
  @override
  Widget build(BuildContext context) {
    final likedMovieBloc = getIt<LikedMovieBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Избранные'),
        centerTitle: true,
      ),
      body: BlocProvider.value(
          value: likedMovieBloc..add(FetchMoviesWithInternet()),
          child: BlocBuilder<LikedMovieBloc, LikedMovieState>(
            builder: (context, state) {
              if (state is LikedMovieLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is LikedMovieLoaded) {
                return ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    trailing: IconButton(
                      onPressed: () {
                        likedMovieBloc.add(RemoveMovie(
                            id: state.likedMovie[index].documentId == null
                                ? state.likedMovie[index].id.toString()
                                : state.likedMovie[index].documentId!));
                      },
                      icon: const Icon(Icons.delete),
                    ),
                    subtitle: Text(
                      state.likedMovie[index].shortDescription ??
                          "Описание нету",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[600],
                      ),
                    ),
                    title: Text(
                      state.likedMovie[index].name!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  itemCount: state.likedMovie.length,
                );
              } else if (state is LikedMovieFailure) {
                return Center(
                  child: Text(state.message),
                );
              }
              return const Center(
                child: Text('sdadad'),
              );
            },
          )),
    );
  }
}
