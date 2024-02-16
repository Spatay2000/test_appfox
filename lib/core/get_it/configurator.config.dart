// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_appfox/core/shared/cache.dart' as _i3;
import 'package:test_appfox/core/shared/cache_impl.dart' as _i4;
import 'package:test_appfox/core/shared/http.dart' as _i7;
import 'package:test_appfox/core/shared/http_client_impl.dart' as _i8;
import 'package:test_appfox/core/utils/navigation_service.dart' as _i6;
import 'package:test_appfox/data/datasource/local/local_client_datasource.dart'
    as _i5;
import 'package:test_appfox/data/datasource/remote/client_remote_datasource.dart'
    as _i9;
import 'package:test_appfox/data/repository/client_repository_impl.dart'
    as _i11;
import 'package:test_appfox/domain/repository/client_repository.dart' as _i10;
import 'package:test_appfox/domain/usecase/delete_local_film_usecase.dart'
    as _i12;
import 'package:test_appfox/domain/usecase/detail_film_usecase.dart' as _i13;
import 'package:test_appfox/domain/usecase/get_movies_local_usecase.dart'
    as _i14;
import 'package:test_appfox/domain/usecase/liked_movie_usecase.dart' as _i16;
import 'package:test_appfox/domain/usecase/remove_movie_usecase.dart' as _i17;
import 'package:test_appfox/domain/usecase/save_movie_usecase.dart' as _i18;
import 'package:test_appfox/domain/usecase/searched_films_usecase.dart' as _i15;
import 'package:test_appfox/features/film_detail/bloc/film_detail_bloc.dart'
    as _i20;
import 'package:test_appfox/features/liked_movie/bloc/liked_movie_bloc.dart'
    as _i21;
import 'package:test_appfox/features/search/bloc/search_films_bloc.dart'
    as _i19;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.Cache>(() => _i4.CacheImpl());
    gh.lazySingleton<_i5.ClientLocalDataSource>(
        () => _i5.ClientLocalDataSourceImpl());
    gh.lazySingleton<_i6.NavigationService>(() => _i6.NavigationService());
    gh.factory<_i7.Http>(
        () => _i8.HttpImpl(navigationService: gh<_i6.NavigationService>()));
    gh.lazySingleton<_i9.ClientRemoteDataSource>(
        () => _i9.ClientRemoteDataSourceImpl(http: gh<_i7.Http>()));
    gh.lazySingleton<_i10.ClientRepository>(() => _i11.ClientRepositoryImpl(
          gh<_i9.ClientRemoteDataSource>(),
          gh<_i5.ClientLocalDataSource>(),
        ));
    gh.lazySingleton<_i12.DeleteLocalFilmUseCase>(() =>
        _i12.DeleteLocalFilmUseCase(repository: gh<_i10.ClientRepository>()));
    gh.lazySingleton<_i13.GetDetailFilmByIdUseCase>(() =>
        _i13.GetDetailFilmByIdUseCase(
            clientRepository: gh<_i10.ClientRepository>()));
    gh.lazySingleton<_i14.GetMoviesLocalUseCase>(() =>
        _i14.GetMoviesLocalUseCase(
            clientRepository: gh<_i10.ClientRepository>()));
    gh.lazySingleton<_i15.GetSeacrhedFilmsUseCase>(() =>
        _i15.GetSeacrhedFilmsUseCase(
            clientRepository: gh<_i10.ClientRepository>()));
    gh.lazySingleton<_i16.LikedMovieUseCase>(() =>
        _i16.LikedMovieUseCase(clientRepository: gh<_i10.ClientRepository>()));
    gh.lazySingleton<_i17.RemoveMovieUseCase>(
        () => _i17.RemoveMovieUseCase(repository: gh<_i10.ClientRepository>()));
    gh.lazySingleton<_i18.SaveMovieUseCase>(
        () => _i18.SaveMovieUseCase(repository: gh<_i10.ClientRepository>()));
    gh.factory<_i19.SearchFilmsBloc>(() => _i19.SearchFilmsBloc(
        getSeacrhedFilmsUseCase: gh<_i15.GetSeacrhedFilmsUseCase>()));
    gh.factory<_i20.FilmDetailBloc>(() => _i20.FilmDetailBloc(
          gh<_i13.GetDetailFilmByIdUseCase>(),
          gh<_i18.SaveMovieUseCase>(),
        ));
    gh.factory<_i21.LikedMovieBloc>(() => _i21.LikedMovieBloc(
          gh<_i16.LikedMovieUseCase>(),
          gh<_i17.RemoveMovieUseCase>(),
          gh<_i14.GetMoviesLocalUseCase>(),
          gh<_i12.DeleteLocalFilmUseCase>(),
        ));
    return this;
  }
}
