import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_appfox/core/get_it/configurator.dart';
import 'package:test_appfox/features/film_detail/film_details_screen.dart';
import 'package:test_appfox/features/search/bloc/search_films_bloc.dart';
import 'package:test_appfox/features/search/widget/card_search_result.dart';

class SearchFilmsScreen extends StatefulWidget {
  const SearchFilmsScreen({super.key});

  @override
  State<SearchFilmsScreen> createState() => _SearchFilmsScreenState();
}

class _SearchFilmsScreenState extends State<SearchFilmsScreen> {
  final searchedResultBloc = getIt<SearchFilmsBloc>();
  Timer? _debounce;
  TextEditingController textEditingController = TextEditingController();

  _onSearchChanged(String query) {
    if (query.length >= 3) {
      if (_debounce?.isActive ?? false) _debounce?.cancel();
      _debounce = Timer(const Duration(milliseconds: 300), () {
        searchedResultBloc.add(GetSearchedFilms(name: query));
      });
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
              children: [
          Container(
            margin: const EdgeInsets.all(10), // Внешний отступ контейнера
            padding: const EdgeInsets.symmetric(
                horizontal: 20), // Внутренний отступ для иконки и текста
            decoration: BoxDecoration(
              color: Colors.white, // Цвет фона контейнера
              borderRadius: BorderRadius.circular(30), // Скругленные углы
              boxShadow: const [
                // Небольшая тень для эффекта "поднятия" контейнера
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(0, 5), // Смещение тени
                ),
              ],
            ),
            child: TextFormField(
              controller: textEditingController,
              onChanged: _onSearchChanged,
              decoration: const InputDecoration(
                hintText: "Поиск...", // Текст-подсказка в поле ввода
                icon: Icon(Icons.search,
                    color: Colors.grey), // Иконка поиска слева от текстового поля
                border: InputBorder
                    .none, // Убираем границу, чтобы поле ввода сочеталось с декорацией контейнера
              ),
            ),
          ),
          Expanded(
            child: BlocProvider.value(
              value: searchedResultBloc
                ..add(GetSearchedFilms(name: textEditingController.text)),
              child: BlocBuilder<SearchFilmsBloc, SearchFilmsState>(
                  builder: (context, state) {
                if (state is SearchedFilmstLoaded) {
                  return ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FilmDetailScreen(
                                    id: state
                                        .searchedFilmsEntity!.docs[index].id),
                              )),
                          child: CardSearchResultWidget(
                            title: state.searchedFilmsEntity!.docs[index].name,
                            shortDescription: state.searchedFilmsEntity!
                                .docs[index].shortDescription,
                            rating: state
                                .searchedFilmsEntity!.docs[index].rating.imdb
                                .toString(),
                          )),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 5,
                          ),
                      itemCount: state.searchedFilmsEntity!.docs.length);
                }
                return const Center(child: CircularProgressIndicator());
              }),
            ),
          ),
              ],
            ),
        ));
  }
}
