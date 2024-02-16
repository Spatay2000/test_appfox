import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_appfox/core/get_it/configurator.dart';
import 'package:test_appfox/features/film_detail/bloc/film_detail_bloc.dart';
import 'package:test_appfox/features/liked_movie/fetch_data.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FilmDetailScreen extends StatefulWidget {
  final int id;
  const FilmDetailScreen({super.key, required this.id});

  @override
  State<FilmDetailScreen> createState() => _FilmDetailScreenState();
}

class _FilmDetailScreenState extends State<FilmDetailScreen> {
  final getDetailFilm = getIt<FilmDetailBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: getDetailFilm..add(GetDetailFilm(id: widget.id)),
        child: BlocBuilder<FilmDetailBloc, FilmDetailState>(
          builder: (context, state) {
            if (state is FilmDetailtLoaded) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 150.0,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                        state.filmDetailEntity.backdrop!.url!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.filmDetailEntity.name!,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                              ),
                              Text(
                                "Описание фильма:${state.filmDetailEntity.description!}",
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                  "Год выпуска: ${state.filmDetailEntity.year}"),
                              Text(
                                  "Количество голосов: ${state.filmDetailEntity.votes!.imdb}"),
                              Text(
                                  "Возрастной рейтинг:  ${state.filmDetailEntity.ageRating}+"),
                              Row(
                                children: [
                                  Text("Жанр:"),
                                  Wrap(
                                    children: List.generate(
                                      state.filmDetailEntity.genres!.length,
                                      (index) => Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4),
                                        child: Text(state.filmDetailEntity
                                            .genres![index].name),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                  "Общие сборы в мире: ${state.filmDetailEntity.fees!.world?.value} \$"),
                              Text(
                                  "Дата премьеры в мире: ${state.filmDetailEntity.premiere!.world!.substring(0, 10)}"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: ElevatedButton(
                                        onPressed: () => getDetailFilm.add(
                                            SaveMovie(
                                                filmDetailEntity:
                                                    state.filmDetailEntity)),
                                        child: const Text(
                                          'Добавить избранное',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  ),
                                  const SizedBox(width: 3,),
                                  Expanded(
                                    child: ElevatedButton(
                                        onPressed: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const LikedMovieScreen())),
                                        child: const Text(
                                          'Избранные',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10.0),
                              const Text("Актерский состав:",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 100.0,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.filmDetailEntity.persons!
                                      .length, // Количество актеров
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 30.0,
                                            backgroundImage: NetworkImage(state
                                                .filmDetailEntity
                                                .persons![index]
                                                .photo),
                                          ),
                                          const SizedBox(height: 3.0),
                                          Text(state.filmDetailEntity
                                              .persons![index].name),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              const Text("Трейлер/Тизер:",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              state.filmDetailEntity.videos!.trailers!.isEmpty
                                  ? const Center(
                                      child: Text("Отсуствует",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold)))
                                  : YoutubePlayerBuilder(
                                      player: YoutubePlayer(
                                        controller: YoutubePlayerController(
                                          initialVideoId: state.filmDetailEntity
                                              .videos!.trailers!.first.url!
                                              .split('/')
                                              .last,
                                          flags: const YoutubePlayerFlags(
                                              autoPlay: false),
                                        ),
                                        showVideoProgressIndicator: true,
                                        bottomActions: [
                                          CurrentPosition(),
                                          ProgressBar(
                                            isExpanded: true,
                                            colors: const ProgressBarColors(
                                              playedColor: Colors.red,
                                              handleColor: Colors.redAccent,
                                            ),
                                          ),
                                        ],
                                      ),
                                      builder: (context, player) =>
                                          SizedBox(child: player),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else if (state is SaveDataSuccess) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Добавлено')));
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
